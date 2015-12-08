% m11_imgRestoration Performs ͼ��ԭ
%
%
% -------------------------------------------------------------------
%  Copyright 1992-2015 Ma XiaoLong
%  $Date: 2015/12/08 17:06:44$
% -------------------------------------------------------------------
clear all;
f=checkerboard(8);%����һ��8��İ���
g=pixeldup(f,8);
% whos f;
% whos g;
% myImshow(f,'ԭͼ');
% myImshow(pixeldup(f,8),'��չ��');
% myImshow(0);

%  H = fspecial('motion',LEN,THETA) returns a filter to approximate, once
%  convolved with an image, the linear motion of a camera by LEN pixels,
%  with an angle of THETA degrees in a counter-clockwise direction. The
%  filter becomes a vector for horizontal and vertical motions.  The
%  default LEN is 9, the default THETA is 0, which corresponds to a
%  horizontal motion of 9 pixels.
PSF = fspecial('motion',7,45);
gb=imfilter(f,PSF,'circular');
noise=imnoise(zeros(size(f)),'gaussian',0,0.001);
gbn=gb+noise;
myImshow(f,'��չͼ');myImshow(gb,'�˶���ͼ��');myImshow(noise,'����ͼ��');
myImshow(gbn,'�˶�������ͼ��');myImshow(0);
