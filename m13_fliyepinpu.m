% m13_fliyepinpu Performs 求一幅图傅立叶变换后的幅频谱和相频谱
% 并分别使用幅频谱和相频谱逆傅立叶变换看结果;
%
% -------------------------------------------------------------------
%  Copyright 1992-2015 Ma XiaoLong
%  $Date: 2015/12/16 23:55:33$
% -------------------------------------------------------------------
f=imread('E:\资料\onedrive\code\test\image\lena.png');
f=rgb2gray(f);
F=fft2(f);
fp=abs(fftshift(F)); % 求幅度谱;
fa=angle(F); % 求相位谱;
myImshow(f,'图像');myImshow(log(1+fp),'幅频谱');myImshow(fa,'相频谱');
% 下面用幅度谱做逆傅立叶变换
g1=real(ifft2(abs(F)));
g2=real(ifft2(fa));
myImshow(g1,'幅度逆变换');myImshow(g2,'相位逆变换');
myImshow(0);