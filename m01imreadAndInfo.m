% img=imread('E:\����\onedrive\code\test\image\lena.png');
% [rows,cols]=size(img)  %���ͼƬ�Ŀ�͸�

% f=[-0.5 0.5;0.75 1.5];
% g=uint8(f);      %��Ϊf�Ǹ���������������ת����uint8��
% h=im2uint8(f)   %������Ϊf�����������ͼ���������[0,1]��double��
% 
% j=im2double(h)
% k=mat2gray(h)
% m=mat2gray(f)

v=[1 2 3 4] ;
w=v' ;%��ת��
zeros(1,4);

A = rand(4,5);  %���ɾ���������;
A = magic(3);   %����ħ�� ������������ĺ�һ��;
A=5*ones(3);    %���ɵ�λ����

f=[-0.5 0.5;0.75 1.5];
f(1,2);
f(:,end);
sum(f);
f(:);           %���������ݰ����������һ��������
sum(f(:));
sum(f,1);

%disp(f);        %disp��������չʾ����������
%str='����������';
%disp(str);

t=input('������');
whos t;
class(t)
t=uint8(t);
whos t;
class(t)


