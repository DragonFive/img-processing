% m12_colorSpace Performs color space
%
%
% -------------------------------------------------------------------
%  Copyright 1992-2015 Ma XiaoLong
%  $Date: 2015/12/09 15:25:01$
% -------------------------------------------------------------------

f=imread('E:\资料\onedrive\code\test\image\lena.png');
fr=f(:,:,1);fg=f(:,:,2);fb=f(:,:,3);
g=cat(3,fr,fg,fb);
whos fr ;whos fg;whos fb;whos g;
myImshow(f);myImshow(fr);myImshow(fg);myImshow(fb);myImshow(g);
myImshow(0);
% 之前的这些分量都是灰度图;
