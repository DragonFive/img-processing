% m12_colorSpace Performs color space
%
%
% -------------------------------------------------------------------
%  Copyright 1992-2015 Ma XiaoLong
%  $Date: 2015/12/09 15:25:01$
% -------------------------------------------------------------------

f=imread('E:\����\onedrive\code\test\image\lena.png');
% fr=f(:,:,1);fg=f(:,:,2);fb=f(:,:,3);
% g=cat(3,fr,fg,fb);
% whos fr ;whos fg;whos fb;whos g;
% myImshow(f);myImshow(fr);myImshow(fg);myImshow(fb);myImshow(g);
% myImshow(0);
% % ֮ǰ����Щ�������ǻҶ�ͼ;
% figure;
% fr2=cat(3,fr,zeros(size(fr)),zeros(size(fr)));
% fg2=cat(3,zeros(size(fg)),fg,zeros(size(fg)));
% fb2=cat(3,zeros(size(fb)),zeros(size(fb)),fb);
% g2 = fr2+fg2+fb2;
% % ��Щ���ǲ�ɫͼ;
% myImshow(fr2);myImshow(fg2);myImshow(fb2);myImshow(g2);
% myImshow(0);

% -------------------------------------------------------------------
% ����Բ�ɫͼ���п����˲�
% -------------------------------------------------------------------

% �����ͼ����ƽ���˲�����ģ��.
f = imread('E:\����\onedrive\code\test\image\Fig0619(a)(RGB_iris).tif');
avgMsk =fspecial('average',15);
g = imfilter(f,avgMsk,'replicate');
myImshow(f);myImshow(g);myImshow(0);







