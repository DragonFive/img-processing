% ������������չ�任
%Fig0206(a)(rose-original).tif
%Fig0305(a)(spectrum).tif
%Fig0308(a)(pollen).tif

%�����Ȼ�������任��ͼ��;
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

%�����ͼ����в���
f=imread('E:\����\onedrive\code\test\image\Fig0308(a)(pollen).tif');
E=2;
s=1./(1+(m./r).^E);
subplot(2,2,2);plot(r,s);
 title('����ͼ��')     %���ͼ�����
 text(0.5,0.5,'E=2')    %��cosx���ע��ӵ������е�ĳ��λ��
 %gtext('s=1./(1+(m./r).^E)')      % �����Ĺ�궨λ,��sinx���ע�������������ĵط�
s=1./(1+(m./double(f)+eps).^E);

subplot(2,2,3);imshow(f);title('ԭͼ') 
subplot(2,2,4);imshow(mat2gray(s));title('��չ���ͼ') 