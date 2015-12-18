% segDis Performs color image segment
%
%
% -------------------------------------------------------------------
%  Copyright 1992-2015 Ma XiaoLong
%  $Date: 2015-12-11 00:03:19$
% -------------------------------------------------------------------


% -------------------------------------------------------------------
% ���ھ���Ĳ�ɫͼ��ָ�
% -------------------------------------------------------------------
clear all;
close all;
f=imread('E:\����\onedrive\code\test\image\240389-14051PK92623.jpg');%ship2.jpg %jupitermoon_original).tif
% ȡ��ע����
msk = roipoly(f);
myImshow(f,'ԭͼ');
myImshow(msk,'mask');
% ȡ��ע����ĸ�������
red =immultiply(msk,f(:,:,1));
green = immultiply(msk,f(:,:,2));
blue = immultiply(msk,f(:,:,3));

g = cat(3,red,green,blue);
myImshow(g,'��ѡ����ͼ��');


% ����m��c�� ���ҵ�MSK�еķ���Ԫ�ص�������ţ�Ȼ���ҵ�g��λ��msk�е�Ԫ�أ�Ȼ�����г�M*N��3�еľ���
indx = find(msk);% �ҵ�msk�в�Ϊ0����Щ�����±�;
[sizexg,sizeyg,sizezg]=size(g);
newg = reshape(g,sizexg*sizeyg,3);
newg = double(newg(indx,:));%��Ƭ
[Covm,meanColor] = covmatrix(newg); % ��������Э�������;�ֵ


% ������ֵT
% Э�������Covm����RGB�����ķ���
dis = diag(Covm);
stDis=sqrt(dis);%��׼������;
Threshold=zeros(1,4);
Threshold(1) = ceil(max(stDis));
for i=2:4
    Threshold(i)=Threshold(1)*i;
end

for i=1:4
    
    % ȷ������ �Ҿ��������ܵ�����
    zone = colorseg('EUCLIDEAN',f,Threshold(i),meanColor);
    % �������յĽ��
    zone = im2uint8(zone)/255;
    zoneR =immultiply(zone,f(:,:,1));
    zoneG =immultiply(zone,f(:,:,2));
    zoneB =immultiply(zone,f(:,:,3));

    resultZone = cat(3,zoneR,zoneG,zoneB);
    myImshow(resultZone,['��ֵΪ',int2str(Threshold(i)),'�Ľ��']);
  
end
myImshow(0);


