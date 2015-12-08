
%下面是测试matlab画曲线
x=0:0.01:1;

for c=[0.04,0.1,0.2,0.4,0.67,1,1.5,2.5,5.0,10.0,25.0]
    y=x.^c;
    plot(x,y);
    hold on;
end


% 下面是在做平方运算;
figure;
img=imread('E:\资料\onedrive\code\test\image\lenargb.jpg');
img=rgb2gray(img);             %matlab把真彩图转化为灰度图;
img=mat2gray(img);  %读入的图片刚开始是uint8的，然后转化为double类型之后才能用mat2gray转化为0-1的double

 i=1; 
for c=[0.04,0.1,0.2,0.4,0.67,1,1.5,2.5,5.0,10.0,25.0]
     y=img.^c;
     subplot(3,4,i);           %把多个图片放在一起的方法;
     imshow(y);
     i=i+1;
     %hold on
end

% 下面测试用imadjust方法做灰度调整
img=imread('E:\资料\onedrive\code\test\image\result.png');
class(img)
figure;
subplot(1,2,1);imshow(img);
img=imadjust(mat2gray(img),[0,1],[0.4,0.6]); %这个函数对于输入图像不要求其类型为[0,1]的double型
subplot(1,2,2);imshow(img);
















