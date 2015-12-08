% % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % %
% 平均空域滤波
% % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % %

% f=imread('E:\资料\onedrive\code\test\image\original_test_pattern.tif');
% f=im2double(f);
% w=ones(31);
% gd=imfilter(f,w);
% imshow(f);
% figure;
% imshow(gd,[]);

% % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % %
% %下面做拉普拉斯空域滤波
% % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % %

% f=imread('E:\资料\onedrive\code\test\image\Fig0316(a)(moon).tif');
% w4=fspecial('laplacian',0);
% w8=[1 1 1;1 -8 1;1 1 1] ;%自己生成一个矩阵做算子;
% g1=imfilter(f,w4,'replicate');%拉普拉斯边缘检测结果;
% g2=imfilter(f,w8,'replicate');
% douf=im2double(f);%转换为double类型
% g3=imfilter(douf,w4,'replicate');
% g4=imfilter(douf,w8,'replicate');
% g5=f-g1;g6=f-g2;g7=douf-g3;g8=douf-g4;
% subplot(2,5,1);imshow(f);
% subplot(2,5,2);imshow(douf);
% for i=3:10
%     subplot(2,5,i),imshow(eval(['g',num2str(i-2)]));%把字符串当作变量名
% end

% 下面的代码被抛弃
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
% 下面是用梯度滤波做边缘检测
% % % % % % % % % % % % % % % %% % % % % % % % % % % % % % % %

% f=imread('E:\资料\onedrive\code\test\image\Fig0316(a)(moon).tif');
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
% % 下面用中值滤波来做图像降噪
% % % % % % % % % % % % % % % % %% % % % % % % % % % % % % % % %
% 
% f=imread('E:\资料\onedrive\code\test\image\Fig0318(a)(ckt-board-orig).tif');
% fn=imnoise(f,'salt & pepper',0.2);
% gm=medfilt2(fn);
% gms=medfilt2(fn,'symmetric');
% subplot(2,2,1);imshow(f);
% subplot(2,2,2);imshow(fn);
% subplot(2,2,3);imshow(gm);
%subplot(2,2,4);imshow(gms);

% % % % % % % % % % % % % % % %% % % % % % % % % % % % % % % %
%下面求图像的傅立叶变换频谱 
% % % % % % % % % % % % % % % %% % % % % % % % % % % % % % % %
% f=imread('E:\资料\onedrive\code\test\image\Fig0403(a)(image).tif');
% F=fft2(f);
% S=abs(F);     % 去F的频谱
% w=2;h=3;i=0;
% i=i+1;subplot(w,h,i);imshow(f,[]);
% i=i+1;subplot(w,h,i);imshow(S,[]);
% % imshow(K)与imshow(K,[])的区别;
% % imshow(K)直接显示K;
% % imshow(K,[])显示K，并将K的最大值和最小值分别作为纯白(255)和纯黑(0)，中间的K值映射为0到255之间的标准灰度值。
% 
% %fftshift移动零频点到频谱中间，重新排列fft,fft2和fftn的输出结果。
% Fc = fftshift(F);
% i=i+1;subplot(w,h,i);imshow(abs(Fc),[]);
%  
% %log变换将像素范围压缩;
% 
% S2=log(1+abs(Fc));
% i=i+1;subplot(w,h,i);imshow(S2,[]);
% 
% f=real(ifft2(F));% 逆傅立叶变换;
% %这次变换中傅立叶变换后没有做什么操作，所以逆傅立叶变换后还是原来的结果;
% 
% i=i+1;subplot(w,h,i);imshow(f,[]);

% % % % % % % % % % % % % % % %% % % % % % % % % % % % % % % %
%下面进行显示优化
% % % % % % % % % % % % % % % %% % % % % % % % % % % % % % % %

% clear all;
% close all;
% f=imread('E:\资料\onedrive\code\test\image\Fig0403(a)(image).tif');
% F=fft2(f);
% S=abs(F);     % 去F的频谱
% myImshow(f);
% myImshow(S);
% % w=2;h=3;i=0;
% % i=i+1;subplot(w,h,i);imshow(f,[]);
% % i=i+1;subplot(w,h,i);imshow(S,[]);
% % imshow(K)与imshow(K,[])的区别;
% % imshow(K)直接显示K;
% % imshow(K,[])显示K，并将K的最大值和最小值分别作为纯白(255)和纯黑(0)，中间的K值映射为0到255之间的标准灰度值。
% 
% %fftshift移动零频点到频谱中间，重新排列fft,fft2和fftn的输出结果。
% Fc = fftshift(F);
% % i=i+1;subplot(w,h,i);imshow(abs(Fc),[]);
% myImshow(abs(Fc));
% %log变换将像素范围压缩;
% 
% S2=log(1+abs(Fc));
% % i=i+1;subplot(w,h,i);imshow(S2,[]);
% myImshow(S2);
% f=real(ifft2(F));% 逆傅立叶变换;
% %这次变换中傅立叶变换后没有做什么操作，所以逆傅立叶变换后还是原来的结果;
% 
% % i=i+1;subplot(w,h,i);imshow(f,[]);
% myImshow(f);
% myImshow(0);

% % % % % % % % % % % % % % % %% % % % % % % % % % % % % % % %
% 测试几个频域常用的函数的用法
% % % % % % % % % % % % % % % %% % % % % % % % % % % % % % % %

% clear all;
% close all;
% % 测试gscale 测试freqz2 测试fftshift与ifftshift
% f=imread('E:\资料\onedrive\code\test\image\Fig0409(a)(bld).tif');
% %F=fft2(f);
% %S=fftshift(log(1+abs(F)));
% %subplot(1,3,1);imshow(S);
% %subplot(1,3,2);imshow(S,[]);
% %S=gscale(S);   % 测试得这个函数的作用是让频谱自适应地显示出来;
% %subplot(1,3,3);imshow(S);
% w=1;h=3;i=0;
% % 由空域滤波器生成频域滤波器 对比fftshift与ifftshift
% h=fspecial('sobel'); %梯度算子
% PQ=paddedsize(size(f));
% H3=freqz2(h,PQ(1),PQ(2));         %由空域滤波器生成频域滤波器;
% %i=i+1;subplot(w,h,i);mesh(abs(H3));%生成函数图像？
% % figure;
% H1=ifftshift(H3);
% %i=i+1;subplot(w,h,i);mesh(abs(H1));
% 
% %H2=fftshift(H3);
% %i=i+1;subplot(w,h,i);mesh(abs(H2));
% %view(45,30); %设置看图像的视角;第一个是左右倾斜度，第二个是上下倾斜度
% %我就感觉这个ifftshift和fftshift的效果是一样的
% g1=dftfilt(f,H1);
% tic;g2=imfilter(double(f),h);toc;
% myImshow(g1);myImshow(g2);myImshow(0);

% % % % % % % % % % % % % % % %% % % % % % % % % % % % % % % %
% 一个频域高斯低通滤波的例子
% % % % % % % % % % % % % % % %% % % % % % % % % % % % % % % %
% 读取图片

% clear all;
% close all;
% f=imread('E:\资料\onedrive\code\test\image\Fig0413(a)(original_test_pattern).tif');
% PQ=paddedsize(size(f));
% % 生成低通滤波器(注意大小) 移动
% [U,V]=dftuv(PQ(1),PQ(2));
% D0=0.05*PQ(2);
% H=exp(-1*(U.^2+V.^2)/(2*D0.^2));
% H1=fftshift(H);
% % 滤波输出结果
% g=dftfilt(f,H);
% f1=fft2(f);
% 
% myImshow(f);myImshow(H1); myImshow(g);myImshow(0);
% % figure;mesh(H1);

% % % % % % % % % % % % % % % %% % % % % % % % % % % % % % % %
% 一个频域高斯低通滤波的例子
% % % % % % % % % % % % % % % %% % % % % % % % % % % % % % % %
% 读取图片

% clear all;
% close all;
% f=imread('E:\资料\onedrive\code\test\image\Fig0413(a)(original_test_pattern).tif');
% % 生成高通滤波器
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
% 用高通滤波做频域增强
% % % % % % % % % % % % % % % %% % % % % % % % % % % % % % % %
% 读取图片

% clear all;
% close all;
% f=imread('E:\资料\onedrive\code\test\image\Fig0419(a)(chestXray_original).tif');
% % 生成波特沃兹滤波器
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
%     % 按照公式进行运算
%     Hh=0.5+2*H;
%     %subplot(2,2,i);hist(Hh,50);
% %     g=dftfilt(f,Hh);
% %     g=histeq(gscale(g),256);
% %     myImshow(g);
% end
%myImshow(0);


% % % % % % % % % % % % % % % %% % % % % % % % % % % % % % % %
% 模拟噪声
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

% 逆调和均值滤波的例子

% gp  = imread('E:\资料\onedrive\code\test\image\Fig0505(a)(ckt_pepper_only).tif');
% gme = spfilt(gp,'gmean',3,3);
% gch = spfilt(gp,'chmean',3,3,1.5); % 椒噪声用正的Q;
% gar = spfilt(gp,'amean',3,3); 
% gme = spfilt(gp,'gmean',3,3);
% myImshow(gp,'椒噪');myImshow(gch,'逆调和除噪');myImshow(gar,'均值滤波');%gme
% myImshow(gme,'几何均值滤波');
% myImshow(0);
% figure;
% gs  = imread('E:\资料\onedrive\code\test\image\Fig0505(b)(ckt_salt_only).tif');
% gch = spfilt(gs,'chmean',3,3,-1.5); % 盐噪声用负的Q;
% gar = spfilt(gs,'amean',3,3); 
% gme = spfilt(gs,'gmean',3,3);
% myImshow(gs,'盐噪');myImshow(gch,'逆调和除噪');myImshow(gar,'均值滤波');
% myImshow(gme,'几何均值滤波');
% myImshow(0);

% 中值滤波与自适应中值滤波
% gsp = imread('E:\资料\onedrive\code\test\image\Fig0506(a)(ckt_salt_pep_pt25).tif');%Fig0506(a)(ckt_salt_pep_pt25).tif
% gm2 = medfilt2(gsp);% 中值滤波
% gch1 = spfilt(gsp,'chmean',3,3,1.5); % 椒噪声用正的Q;
% gch2 = spfilt(gsp,'chmean',3,3,-1.5); % 盐噪声用负的Q;
% gch3 = spfilt(gch1,'chmean',3,3,-1.5); % 除椒后除盐
% gadp = adpmedian(gsp,7);
% myImshow(gsp,'椒盐噪声');myImshow(gm2,'中值滤波');myImshow(gadp,'自适应中值');
% myImshow(gch1,'除椒');myImshow(gch2,'除盐');myImshow(gch3,'除椒后除盐');
% myImshow(0);








