% �������Ҷ�ֱ��ͼ����ͷ���
f=imread('E:\����\onedrive\code\test\image\Fig0206(a)(rose-original).tif');
imshow(f);figure;imhist(f);
%ylim('auto');

g=histeq(f,256);  %����ֱ��ͼ����;
figure;imshow(g);
figure;imhist(g);
%ylim('atuo'); %sets the axis limit mode to auto. 

hnorm=imhist(f)./numel(f); %��һ��ֱ��ͼ
cdf=cumsum(hnorm);         %�ۼ�
x=linspace(0,1,256);   %��0��1֮�����256���Ⱦ���ĵ�;
figure;
plot(x,cdf);
axis([0 1 0 1]);
% set(gca,'xtick',0:2:1);
% set(gca,'ytick',0:2:1);
