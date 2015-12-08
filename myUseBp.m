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
% subplot(1,2,1);plot(jb(2:numel(jb)));title(['批量操作经过',int2str(numel(jb)),'次迭代']);
% subplot(1,2,2);plot(js(2:numel(js)));title(['随机操作经过',int2str(numel(js)),'次迭代']);

% 下面考查隐含层不同节点数对精度的影响
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
titlejiedian='隐含层节点数';
titilebuchang='步长';
str=titilebuchang;
subplot(1,2,1);plot(jingdub);title([str,'对批量误差的影响']);
subplot(1,2,2);plot(jingdus);title([str,'对随机误差的影响']);
figure;
subplot(1,2,1);plot(diedaishub);title([str,'对批量迭代数的影响']);
subplot(1,2,2);plot(diedaishus);title([str,'对随机迭代数的影响']);
