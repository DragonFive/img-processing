% img=imread('E:\资料\onedrive\code\test\image\lena.png');
% [rows,cols]=size(img)  %求得图片的宽和高

% f=[-0.5 0.5;0.75 1.5];
% g=uint8(f);      %认为f是个矩阵把里面的数据转化成uint8型
% h=im2uint8(f)   %这里认为f里面的数据是图像类型里的[0,1]的double型
% 
% j=im2double(h)
% k=mat2gray(h)
% m=mat2gray(f)

v=[1 2 3 4] ;
w=v' ;%求转置
zeros(1,4);

A = rand(4,5);  %生成矩阵的随机数;
A = magic(3);   %生成魔数 各个方向的数的和一样;
A=5*ones(3);    %生成单位矩阵

f=[-0.5 0.5;0.75 1.5];
f(1,2);
f(:,end);
sum(f);
f(:);           %把所有内容按列优先组成一个列向量
sum(f(:));
sum(f,1);

%disp(f);        %disp函数可以展示变量的内容
%str='哈哈哈啊哈';
%disp(str);

t=input('请输入');
whos t;
class(t)
t=uint8(t);
whos t;
class(t)


