% 下面进行相对伸展变换
%Fig0206(a)(rose-original).tif
%Fig0305(a)(spectrum).tif
%Fig0308(a)(pollen).tif

%下面先画出拉伸变换的图像;
m=0.5;
A=[0:1:10];
B=[10:10:100];
r=[0:0.01:1];
for E=[A B]
    s=1./(1+(m./r).^E);
    subplot(2,2,1);plot(r,s);
    axis([0 1 0 1])
    set(gca,'xtick',0:0.1:1);
    set(gca,'ytick',0:0.1:1);
    xlabel('x');
    ylabel('y');
    hold on
end
%s=1./(1+(m./r).^E)
%plot(r,s);

%下面对图像进行操作
f=imread('E:\资料\onedrive\code\test\image\Fig0308(a)(pollen).tif');
E=2;
s=1./(1+(m./r).^E);
subplot(2,2,2);plot(r,s);
 title('函数图像')     %添加图像标题
 text(0.5,0.5,'E=2')    %将cosx这个注解加到坐标中的某个位置
 %gtext('s=1./(1+(m./r).^E)')      % 用鼠标的光标定位,将sinx这个注解放在你鼠标点击的地方
s=1./(1+(m./double(f)+eps).^E);

subplot(2,2,3);imshow(f);title('原图') 
subplot(2,2,4);imshow(mat2gray(s));title('扩展后的图') 