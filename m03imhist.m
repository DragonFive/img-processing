% 下面做灰度直方图均衡和分配
f=imread('E:\资料\onedrive\code\test\image\Fig0206(a)(rose-original).tif');
imshow(f);figure;imhist(f);
%ylim('auto');

g=histeq(f,256);  %进行直方图均衡;
figure;imshow(g);
figure;imhist(g);
%ylim('atuo'); %sets the axis limit mode to auto. 

hnorm=imhist(f)./numel(f); %归一化直方图
cdf=cumsum(hnorm);         %累加
x=linspace(0,1,256);   %在0和1之间产生256个等距离的点;
figure;
plot(x,cdf);
axis([0 1 0 1]);
% set(gca,'xtick',0:2:1);
% set(gca,'ytick',0:2:1);
