% m13_fliyepinpu Performs ��һ��ͼ����Ҷ�任��ķ�Ƶ�׺���Ƶ��
% ���ֱ�ʹ�÷�Ƶ�׺���Ƶ���渵��Ҷ�任�����;
%
% -------------------------------------------------------------------
%  Copyright 1992-2015 Ma XiaoLong
%  $Date: 2015/12/16 23:55:33$
% -------------------------------------------------------------------
f=imread('E:\����\onedrive\code\test\image\lena.png');
f=rgb2gray(f);
F=fft2(f);
fp=abs(fftshift(F)); % �������;
fa=angle(F); % ����λ��;
myImshow(f,'ͼ��');myImshow(log(1+fp),'��Ƶ��');myImshow(fa,'��Ƶ��');
% �����÷��������渵��Ҷ�任
g1=real(ifft2(abs(F)));
g2=real(ifft2(fa));
myImshow(g1,'������任');myImshow(g2,'��λ��任');
myImshow(0);