% ��������ҵ��һ��

% f=imread('E:\����\onedrive\code\test\image\Fig0310(a)(Moon Phobos).tif');
% f=im2double(f);
% subplot(2,2,1);imshow(f);title('ԭͼ');
% subplot(2,2,2);imhist(f);title('ԭͼֱ��ͼ');
% m=1/2;
% E=10;
% s=1./(1+(m./im2double(f)+eps).^E);
% subplot(2,2,3);imshow(s);title('չ����ͼ');
% subplot(2,2,4);imhist(s);title('չ���ֱ��ͼ');
% 
% figure;
% r=[0:0.01:1];
% s=1./(1+(m./r).^E);
% plot(r,s);title('��������');

% m=0.5;
% A=[0:1:10];
% B=[10:10:100];
% r=[0:0.01:1];
% for E=[A B]
%     s=1./(1+(m./r).^E);
%     %subplot(2,2,1);
%     plot(r,s);
%     axis([0 1 0 1])
%     set(gca,'xtick',0:0.1:1);
%     set(gca,'ytick',0:0.1:1);
%     xlabel('x');
%     ylabel('y');
%     hold on
% end


% ��ҵ�ڶ���
% G=8;
% p=[0.17 0.25 0.21 0.16 0.07 0.08 0.04 0.02];
% subplot(1,2,1);bar(p,0.2);set(gca,'XTickLabel',0:1:7);title('ԭʼֱ��ͼ')
% s=[];
% for i=1:8
%     s=[s round(G*sum(p(1:i))-1)];
% end
% s
% [m,n]=hist(s,unique(s))
% subplot(1,2,2);bar(m./8,0.2);set(gca,'XTickLabel',n);title('ӳ����ֱ��ͼ')

% ��ҵ������
f=rgb2gray(imread('E:\����\onedrive\code\test\image\lena.png'));
subplot(3,2,1);imshow(f);title('ԭͼ');subplot(3,2,2);imhist(f);title('ԭͼֱ��ͼ');
[count x]=imhist(f);

rigin_ratio=count./numel(f);  %����ÿ���Ҷ�ռ�ı���;
%�������ÿ���Ҷ�ӳ���ĻҶ�
% img2=histeq(f,256); 


s=[];G=256;
%sum(rigin_ratio(G))
for i=1:G
   s=[s ceil(G*sum(rigin_ratio(1:i))-1)] ;
end
img2=f;
[m,n]=size(f);
for i=1:m
    for j=1:n
        img2(i,j)=s(f(i,j)+1);
    end
end
 subplot(3,2,3);imshow(img2);title('ӳ���ͼ');subplot(3,2,4);imhist(img2);title('ӳ���ֱ��ͼ');
 
[count x]=imhist(img2);

rigin_ratio=count./numel(f);  %����ÿ���Ҷ�ռ�ı���;
%�������ÿ���Ҷ�ӳ���ĻҶ�
% img3=histeq(f,256); 


s=[];G=256;
%sum(rigin_ratio(G))
for i=1:G
   s=[s ceil(G*sum(rigin_ratio(1:i))-1)] ;
end
img3=img2;
[m,n]=size(img2);
for i=1:m
    for j=1:n
        img3(i,j)=s(img2(i,j)+1);
    end
end
subplot(3,2,5);imshow(img3);title('ӳ���ͼ');subplot(3,2,6);imhist(img3);title('ӳ���ֱ��ͼ');
 






















