
%�����ǲ���matlab������
x=0:0.01:1;

for c=[0.04,0.1,0.2,0.4,0.67,1,1.5,2.5,5.0,10.0,25.0]
    y=x.^c;
    plot(x,y);
    hold on;
end


% ����������ƽ������;
figure;
img=imread('E:\����\onedrive\code\test\image\lenargb.jpg');
img=rgb2gray(img);             %matlab�����ͼת��Ϊ�Ҷ�ͼ;
img=mat2gray(img);  %�����ͼƬ�տ�ʼ��uint8�ģ�Ȼ��ת��Ϊdouble����֮�������mat2grayת��Ϊ0-1��double

 i=1; 
for c=[0.04,0.1,0.2,0.4,0.67,1,1.5,2.5,5.0,10.0,25.0]
     y=img.^c;
     subplot(3,4,i);           %�Ѷ��ͼƬ����һ��ķ���;
     imshow(y);
     i=i+1;
     %hold on
end

% ���������imadjust�������Ҷȵ���
img=imread('E:\����\onedrive\code\test\image\result.png');
class(img)
figure;
subplot(1,2,1);imshow(img);
img=imadjust(mat2gray(img),[0,1],[0.4,0.6]); %���������������ͼ��Ҫ��������Ϊ[0,1]��double��
subplot(1,2,2);imshow(img);
















