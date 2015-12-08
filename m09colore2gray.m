% 把真彩图转化为灰度图;
f=imread('E:\资料\onedrive\code\test\image\lena.png');
imshow(f);
figure;imshow(rgb2gray(f));