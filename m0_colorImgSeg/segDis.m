% segDis Performs color image segment
%
%
% -------------------------------------------------------------------
%  Copyright 1992-2015 Ma XiaoLong
%  $Date: 2015-12-11 00:03:19$
% -------------------------------------------------------------------


% -------------------------------------------------------------------
% 基于距离的彩色图像分割
% -------------------------------------------------------------------
clear all;
close all;
f=imread('E:\资料\onedrive\code\test\image\240389-14051PK92623.jpg');%ship2.jpg %jupitermoon_original).tif
% 取关注区域
msk = roipoly(f);
myImshow(f,'原图');
myImshow(msk,'mask');
% 取关注区域的各个分量
red =immultiply(msk,f(:,:,1));
green = immultiply(msk,f(:,:,2));
blue = immultiply(msk,f(:,:,3));

g = cat(3,red,green,blue);
myImshow(g,'所选区域图形');


% 计算m和c： 先找到MSK中的非零元素的整体序号，然后找到g中位于msk中的元素，然后排列成M*N行3列的矩阵，
indx = find(msk);% 找到msk中不为0的那些线性下标;
[sizexg,sizeyg,sizezg]=size(g);
newg = reshape(g,sizexg*sizeyg,3);
newg = double(newg(indx,:));%切片
[Covm,meanColor] = covmatrix(newg); % 计算矩阵的协方差矩阵和均值


% 计算阈值T
% 协方差矩阵Covm包含RGB分量的方差
dis = diag(Covm);
stDis=sqrt(dis);%标准差向量;
Threshold=zeros(1,4);
Threshold(1) = ceil(max(stDis));
for i=2:4
    Threshold(i)=Threshold(1)*i;
end

for i=1:4
    
    % 确定区域 我觉得它可能调用了
    zone = colorseg('EUCLIDEAN',f,Threshold(i),meanColor);
    % 生成最终的结果
    zone = im2uint8(zone)/255;
    zoneR =immultiply(zone,f(:,:,1));
    zoneG =immultiply(zone,f(:,:,2));
    zoneB =immultiply(zone,f(:,:,3));

    resultZone = cat(3,zoneR,zoneG,zoneB);
    myImshow(resultZone,['阈值为',int2str(Threshold(i)),'的结果']);
  
end
myImshow(0);


