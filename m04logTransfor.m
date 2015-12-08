% 下面进行log变换
%Fig0206(a)(rose-original).tif
%Fig0305(a)(spectrum).tif
%Fig0308(a)(pollen).tif
f=imread('E:\资料\onedrive\code\test\image\Fig0308(a)(pollen).tif');
subplot(2,2,1);imshow(f);
g=im2uint8(mat2gray(log(1+double(f))));%进行log变换
%g=mat2gray(log(1+double(f)));
subplot(2,2,2);imshow(g);

%h=histeq(f,256);  %进行直方图均衡;
%j=histeq(g,256);

subplot(2,2,3);imhist(f);
subplot(2,2,4);imhist(g);