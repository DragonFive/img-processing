% m12_colorSpace Performs color space
%
%
% -------------------------------------------------------------------
%  Copyright 1992-2015 Ma XiaoLong
%  $Date: 2015/12/09 15:25:01$
% -------------------------------------------------------------------

f=imread('E:\资料\onedrive\code\test\image\lena.png');
% fr=f(:,:,1);fg=f(:,:,2);fb=f(:,:,3);
% g=cat(3,fr,fg,fb);
% whos fr ;whos fg;whos fb;whos g;
% myImshow(f);myImshow(fr);myImshow(fg);myImshow(fb);myImshow(g);
% myImshow(0);
% % 之前的这些分量都是灰度图;
% figure;
% fr2=cat(3,fr,zeros(size(fr)),zeros(size(fr)));
% fg2=cat(3,zeros(size(fg)),fg,zeros(size(fg)));
% fb2=cat(3,zeros(size(fb)),zeros(size(fb)),fb);
% g2 = fr2+fg2+fb2;
% % 这些才是彩色图;
% myImshow(fr2);myImshow(fg2);myImshow(fb2);myImshow(g2);
% myImshow(0);

% -------------------------------------------------------------------
% 下面对彩色图进行空域滤波
% -------------------------------------------------------------------

% 下面对图像做平均滤波进行模糊.
% f = imread('E:\资料\onedrive\code\test\image\Fig0619(a)(RGB_iris).tif');
% % avgMsk =fspecial('average',15);
% % g = imfilter(f,avgMsk,'replicate');
% % myImshow(f);myImshow(g);myImshow(0);
% 

% % -------------------------------------------------------------------
% % % 用拉普拉斯算子对图像进行边缘锐化;
% % -------------------------------------------------------------------

% lapMsk = [1,1,1;1,-8,1;1,1,1];
% lp=imfilter(f,lapMsk,'replicate');
% flp = f+lp;         % 把变化亮度调低
% hlp = imsubtract(f,lp); %把边缘亮度调高;
% myImshow(f);myImshow(lp);myImshow(flp);myImshow(hlp);myImshow(0);

% % -------------------------------------------------------------------
% % % 用梯度求边缘
% % -------------------------------------------------------------------
% f = imread('E:\资料\onedrive\code\test\image\Fig0619(a)(RGB_iris).tif');
% fr = imread('E:\资料\onedrive\code\test\image\Fig0624(a)RGB2-red.tif');
% fg = imread('E:\资料\onedrive\code\test\image\Fig0624(b)RGB2-green.tif');
% fb = imread('E:\资料\onedrive\code\test\image\Fig0624(c)(RGB2-blue).tif');
% 
% 
% fcat= cat(3,fr,fg,fb);
% [VG,A,PPG]=colorgrad(fcat);
% whos PPG;
% myImshow(fcat);myImshow(VG);myImshow(PPG);
% [VG,A,PPG]=colorgrad(f);
% myImshow(f);myImshow(VG);myImshow(PPG);myImshow(0);
% % VG 是三个维度作为一个向量求图像边缘，而PPG是三个分量分别求然后再合成？

% -------------------------------------------------------------------
% 基于距离的彩色图像分割
% -------------------------------------------------------------------
clear all;
close all;
f=imread('E:\资料\onedrive\code\test\image\ship2.jpg');%ship2.jpg %jupitermoon_original).tif
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


