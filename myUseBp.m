% -------------------------------------------------------------------
% myUseBp Performs ********
%
%
%  Copyright 1992-2015 Ma XiaoLong
%  $Date: 2015/12/06 16:42:51$
% -------------------------------------------------------------------
clear all;
m_datafile();
load('datax.mat','datax');
load('datay.mat','datay');
% [whb,wob,jb]=mybp_batch(datax,datay,3,0.1,0.5);
% [whs,wos,js]=mybp_sto(datax,datay,3,0.1,0.5);
% subplot(1,2,1);plot(jb(2:numel(jb)));title(['������������',int2str(numel(jb)),'�ε���']);
% subplot(1,2,2);plot(js(2:numel(js)));title(['�����������',int2str(numel(js)),'�ε���']);

% ���濼�������㲻ͬ�ڵ����Ծ��ȵ�Ӱ��
jingdub=[];
jingdus=[];
diedaishub=[];diedaishus=[];
% for i=1:5
%     [whb,wob,jb]=mybp_batch(datax,datay,i,0.1,0.5);
%     [whs,wos,js]=mybp_sto(datax,datay,i,0.1,0.5);
%     jingdub(i)=jb(numel(jb));
%     jingdus(i)=js(numel(js));
%     diedaishub(i)=numel(jb);
%     diedaishus(i)=numel(js);
%     
% end
j=1;
for i=0.1:0.1:1
    [whb,wob,jb]=mybp_batch(datax,datay,3,0.1,i);
    [whs,wos,js]=mybp_sto(datax,datay,3,0.1,i);
    jingdub(j)=jb(numel(jb));
    jingdus(j)=js(numel(js));
    diedaishub(j)=numel(jb);
    diedaishus(j)=numel(js);
    j=j+1;
end
titlejiedian='������ڵ���';
titilebuchang='����';
str=titilebuchang;
subplot(1,2,1);plot(jingdub);title([str,'����������Ӱ��']);
subplot(1,2,2);plot(jingdus);title([str,'���������Ӱ��']);
figure;
subplot(1,2,1);plot(diedaishub);title([str,'��������������Ӱ��']);
subplot(1,2,2);plot(diedaishus);title([str,'�������������Ӱ��']);
