% % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % %
% ƽ�������˲�
% % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % %

% f=imread('E:\����\onedrive\code\test\image\original_test_pattern.tif');
% f=im2double(f);
% w=ones(31);
% gd=imfilter(f,w);
% imshow(f);
% figure;
% imshow(gd,[]);

% % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % %
% %������������˹�����˲�
% % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % %

% f=imread('E:\����\onedrive\code\test\image\Fig0316(a)(moon).tif');
% w4=fspecial('laplacian',0);
% w8=[1 1 1;1 -8 1;1 1 1] ;%�Լ�����һ������������;
% g1=imfilter(f,w4,'replicate');%������˹��Ե�����;
% g2=imfilter(f,w8,'replicate');
% douf=im2double(f);%ת��Ϊdouble����
% g3=imfilter(douf,w4,'replicate');
% g4=imfilter(douf,w8,'replicate');
% g5=f-g1;g6=f-g2;g7=douf-g3;g8=douf-g4;
% subplot(2,5,1);imshow(f);
% subplot(2,5,2);imshow(douf);
% for i=3:10
%     subplot(2,5,i),imshow(eval(['g',num2str(i-2)]));%���ַ�������������
% end

% ����Ĵ��뱻����
% subplot(2,5,1);imshow(f);
% subplot(2,5,2);imshow(douf);
% subplot(5,2,3);imshow(g1);
% subplot(5,2,4);imshow(g2);
% subplot(5,2,5);imshow(g3);
% subplot(5,2,6);imshow(g4);
% subplot(5,2,7);imshow(g5);
% subplot(5,2,8);imshow(g6);
% subplot(5,2,9);imshow(g7);
% subplot(5,2,10);imshow(g8);

% % % % % % % % % % % % % % % %% % % % % % % % % % % % % % % %
% ���������ݶ��˲�����Ե���
% % % % % % % % % % % % % % % %% % % % % % % % % % % % % % % %

% f=imread('E:\����\onedrive\code\test\image\Fig0316(a)(moon).tif');
% f=im2double(f);
% w=[-1 0;0 1];
% x=[0,-1;1,0];
% g=imfilter(f,w,'replicate');
% h=imfilter(f,x,'replicate');
% 
% %g=[g,imfilter(f,w(2),'replicate')]
% subplot(2,2,1);imshow(g);
% subplot(2,2,2);imshow(h);
% subplot(2,2,3);imshow((g+h)/2);

% % % % % % % % % % % % % % % % %% % % % % % % % % % % % % % % %
% % ��������ֵ�˲�����ͼ����
% % % % % % % % % % % % % % % % %% % % % % % % % % % % % % % % %
% 
% f=imread('E:\����\onedrive\code\test\image\Fig0318(a)(ckt-board-orig).tif');
% fn=imnoise(f,'salt & pepper',0.2);
% gm=medfilt2(fn);
% gms=medfilt2(fn,'symmetric');
% subplot(2,2,1);imshow(f);
% subplot(2,2,2);imshow(fn);
% subplot(2,2,3);imshow(gm);
%subplot(2,2,4);imshow(gms);

% % % % % % % % % % % % % % % %% % % % % % % % % % % % % % % %
%������ͼ��ĸ���Ҷ�任Ƶ�� 
% % % % % % % % % % % % % % % %% % % % % % % % % % % % % % % %
% f=imread('E:\����\onedrive\code\test\image\Fig0403(a)(image).tif');
% F=fft2(f);
% S=abs(F);     % ȥF��Ƶ��
% w=2;h=3;i=0;
% i=i+1;subplot(w,h,i);imshow(f,[]);
% i=i+1;subplot(w,h,i);imshow(S,[]);
% % imshow(K)��imshow(K,[])������;
% % imshow(K)ֱ����ʾK;
% % imshow(K,[])��ʾK������K�����ֵ����Сֵ�ֱ���Ϊ����(255)�ʹ���(0)���м��Kֵӳ��Ϊ0��255֮��ı�׼�Ҷ�ֵ��
% 
% %fftshift�ƶ���Ƶ�㵽Ƶ���м䣬��������fft,fft2��fftn����������
% Fc = fftshift(F);
% i=i+1;subplot(w,h,i);imshow(abs(Fc),[]);
%  
% %log�任�����ط�Χѹ��;
% 
% S2=log(1+abs(Fc));
% i=i+1;subplot(w,h,i);imshow(S2,[]);
% 
% f=real(ifft2(F));% �渵��Ҷ�任;
% %��α任�и���Ҷ�任��û����ʲô�����������渵��Ҷ�任����ԭ���Ľ��;
% 
% i=i+1;subplot(w,h,i);imshow(f,[]);

% % % % % % % % % % % % % % % %% % % % % % % % % % % % % % % %
%���������ʾ�Ż�
% % % % % % % % % % % % % % % %% % % % % % % % % % % % % % % %

% clear all;
% close all;
% f=imread('E:\����\onedrive\code\test\image\Fig0403(a)(image).tif');
% F=fft2(f);
% S=abs(F);     % ȥF��Ƶ��
% myImshow(f);
% myImshow(S);
% % w=2;h=3;i=0;
% % i=i+1;subplot(w,h,i);imshow(f,[]);
% % i=i+1;subplot(w,h,i);imshow(S,[]);
% % imshow(K)��imshow(K,[])������;
% % imshow(K)ֱ����ʾK;
% % imshow(K,[])��ʾK������K�����ֵ����Сֵ�ֱ���Ϊ����(255)�ʹ���(0)���м��Kֵӳ��Ϊ0��255֮��ı�׼�Ҷ�ֵ��
% 
% %fftshift�ƶ���Ƶ�㵽Ƶ���м䣬��������fft,fft2��fftn����������
% Fc = fftshift(F);
% % i=i+1;subplot(w,h,i);imshow(abs(Fc),[]);
% myImshow(abs(Fc));
% %log�任�����ط�Χѹ��;
% 
% S2=log(1+abs(Fc));
% % i=i+1;subplot(w,h,i);imshow(S2,[]);
% myImshow(S2);
% f=real(ifft2(F));% �渵��Ҷ�任;
% %��α任�и���Ҷ�任��û����ʲô�����������渵��Ҷ�任����ԭ���Ľ��;
% 
% % i=i+1;subplot(w,h,i);imshow(f,[]);
% myImshow(f);
% myImshow(0);

% % % % % % % % % % % % % % % %% % % % % % % % % % % % % % % %
% ���Լ���Ƶ���õĺ������÷�
% % % % % % % % % % % % % % % %% % % % % % % % % % % % % % % %

% clear all;
% close all;
% % ����gscale ����freqz2 ����fftshift��ifftshift
% f=imread('E:\����\onedrive\code\test\image\Fig0409(a)(bld).tif');
% %F=fft2(f);
% %S=fftshift(log(1+abs(F)));
% %subplot(1,3,1);imshow(S);
% %subplot(1,3,2);imshow(S,[]);
% %S=gscale(S);   % ���Ե������������������Ƶ������Ӧ����ʾ����;
% %subplot(1,3,3);imshow(S);
% w=1;h=3;i=0;
% % �ɿ����˲�������Ƶ���˲��� �Ա�fftshift��ifftshift
% h=fspecial('sobel'); %�ݶ�����
% PQ=paddedsize(size(f));
% H3=freqz2(h,PQ(1),PQ(2));         %�ɿ����˲�������Ƶ���˲���;
% %i=i+1;subplot(w,h,i);mesh(abs(H3));%���ɺ���ͼ��
% % figure;
% H1=ifftshift(H3);
% %i=i+1;subplot(w,h,i);mesh(abs(H1));
% 
% %H2=fftshift(H3);
% %i=i+1;subplot(w,h,i);mesh(abs(H2));
% %view(45,30); %���ÿ�ͼ����ӽ�;��һ����������б�ȣ��ڶ�����������б��
% %�Ҿ͸о����ifftshift��fftshift��Ч����һ����
% g1=dftfilt(f,H1);
% tic;g2=imfilter(double(f),h);toc;
% myImshow(g1);myImshow(g2);myImshow(0);

% % % % % % % % % % % % % % % %% % % % % % % % % % % % % % % %
% һ��Ƶ���˹��ͨ�˲�������
% % % % % % % % % % % % % % % %% % % % % % % % % % % % % % % %
% ��ȡͼƬ

% clear all;
% close all;
% f=imread('E:\����\onedrive\code\test\image\Fig0413(a)(original_test_pattern).tif');
% PQ=paddedsize(size(f));
% % ���ɵ�ͨ�˲���(ע���С) �ƶ�
% [U,V]=dftuv(PQ(1),PQ(2));
% D0=0.05*PQ(2);
% H=exp(-1*(U.^2+V.^2)/(2*D0.^2));
% H1=fftshift(H);
% % �˲�������
% g=dftfilt(f,H);
% f1=fft2(f);
% 
% myImshow(f);myImshow(H1); myImshow(g);myImshow(0);
% % figure;mesh(H1);

% % % % % % % % % % % % % % % %% % % % % % % % % % % % % % % %
% һ��Ƶ���˹��ͨ�˲�������
% % % % % % % % % % % % % % % %% % % % % % % % % % % % % % % %
% ��ȡͼƬ

% clear all;
% close all;
% f=imread('E:\����\onedrive\code\test\image\Fig0413(a)(original_test_pattern).tif');
% % ���ɸ�ͨ�˲���
% PQ=paddedsize(size(f));
% [U,V]=dftuv(PQ(1),PQ(2));
% D0=[15,30,80];
% 
% for i=1:numel(D0)
%     H=1-exp(-1*(U.^2+V.^2)/(2*D0(i).^2));
%     %myImshow(fftshift(H));
%     g=dftfilt(f,H);
%     myImshow(g);
% end
% myImshow(0);

% % % % % % % % % % % % % % % %% % % % % % % % % % % % % % % %
% �ø�ͨ�˲���Ƶ����ǿ
% % % % % % % % % % % % % % % %% % % % % % % % % % % % % % % %
% ��ȡͼƬ

% clear all;
% close all;
% f=imread('E:\����\onedrive\code\test\image\Fig0419(a)(chestXray_original).tif');
% % ���ɲ��������˲���
% PQ=paddedsize(size(f));
% [U,V]=dftuv(PQ(1),PQ(2));
% D0=0.05*PQ(2);
% n=[1,5,15,50];
% % D0=[15,30,80];
% %myImshow(gscale(f));
% for i=1:numel(n);
%     b=((U.^2+V.^2)/(D0.^2)).^n(i);
%     H=b/(b+1);
%     %myImshow(H);
%     % ���չ�ʽ��������
%     Hh=0.5+2*H;
%     %subplot(2,2,i);hist(Hh,50);
% %     g=dftfilt(f,Hh);
% %     g=histeq(gscale(g),256);
% %     myImshow(g);
% end
%myImshow(0);


% % % % % % % % % % % % % % % %% % % % % % % % % % % % % % % %
% ģ������
% % % % % % % % % % % % % % % %% % % % % % % % % % % % % % % %

% close all;
% clear all;
% r={};
% r{1}=imnoise2('gaussian',100000,1,0,1);
% r{2}=imnoise2('uniform',100000,1,0,1);
% r{3}=imnoise2('lognormal',100000,1,0,1);
% r{4}=imnoise2('rayleigh',100000,1,0,1);
% r{5}=imnoise2('exponential',100000,1,1);
% r{6}=imnoise2('erlang',100000,1,0,1);
% 
% figure;
% for i=1:numel(r)
%    subplot(2,3,i);hist(r{i},50);
%    %size(r{i})
% end

% ����;�ֵ�˲�������

% gp  = imread('E:\����\onedrive\code\test\image\Fig0505(a)(ckt_pepper_only).tif');
% gme = spfilt(gp,'gmean',3,3);
% gch = spfilt(gp,'chmean',3,3,1.5); % ������������Q;
% gar = spfilt(gp,'amean',3,3); 
% gme = spfilt(gp,'gmean',3,3);
% myImshow(gp,'����');myImshow(gch,'����ͳ���');myImshow(gar,'��ֵ�˲�');%gme
% myImshow(gme,'���ξ�ֵ�˲�');
% myImshow(0);
% figure;
% gs  = imread('E:\����\onedrive\code\test\image\Fig0505(b)(ckt_salt_only).tif');
% gch = spfilt(gs,'chmean',3,3,-1.5); % �������ø���Q;
% gar = spfilt(gs,'amean',3,3); 
% gme = spfilt(gs,'gmean',3,3);
% myImshow(gs,'����');myImshow(gch,'����ͳ���');myImshow(gar,'��ֵ�˲�');
% myImshow(gme,'���ξ�ֵ�˲�');
% myImshow(0);

% ��ֵ�˲�������Ӧ��ֵ�˲�
% gsp = imread('E:\����\onedrive\code\test\image\Fig0506(a)(ckt_salt_pep_pt25).tif');%Fig0506(a)(ckt_salt_pep_pt25).tif
% gm2 = medfilt2(gsp);% ��ֵ�˲�
% gch1 = spfilt(gsp,'chmean',3,3,1.5); % ������������Q;
% gch2 = spfilt(gsp,'chmean',3,3,-1.5); % �������ø���Q;
% gch3 = spfilt(gch1,'chmean',3,3,-1.5); % ���������
% gadp = adpmedian(gsp,7);
% myImshow(gsp,'��������');myImshow(gm2,'��ֵ�˲�');myImshow(gadp,'����Ӧ��ֵ');
% myImshow(gch1,'����');myImshow(gch2,'����');myImshow(gch3,'���������');
% myImshow(0);








