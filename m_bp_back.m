% -------------------------------------------------------------------
% m_bp_back Performs bp algorithm 
% training_example 训练的数据集
% eta 学习速率
% 隐藏层认为是3个
%  Copyright 1992-2015 Ma XiaoLong
%  $Date: 2015/12/05 23:56:25$
% -------------------------------------------------------------------


function m_bp_back(training_example,eta)

[m,n]=size(training_example); %m 行 n 列
%初始化权重-0.5~0.5之间
wih=rand(3,3)-0.5;
whj=rand(3,3)-0.5;
num_of_samples = m/2;
% 对于每个样本
max_z=-1;min_z=1;
for num=1:num_of_samples
    x=training_example(num,:)';%取一个样本;3*1
    t=training_example(num_of_samples+num,:)';%取样本对应的输出;3*1;
    net2=wih*x;  %输入层权值和3*1;
    %求隐层;
    hidden1=zeros(3,1);
    for i=1:3
       hidden1(i)=(exp(net2(i))-exp(-net2(i)))/(exp(net2(i))+exp(-net2(i)));% 隐层使用双曲双切函数做激励3*1;
         %hidden1(i)=1/(1+exp(-net2(i)));
    end
    %hidden1=hidden1';%3*1
    net3=whj*hidden1; %隐层权值和;3*1
    %求输出层
    z=zeros(3,1);
    for i=1:n
        z(i)=1/(1+exp(-net3(i))); %输出层用sigmoid函数做激励；3*1;
    end
    % 下面对误差进行反向传播;
    % 先求输出层给的误差;sigmoid函数求导 z*(1-z)
    delta2=zeros(3,1);
    for j=1:n
        delta2(j)=(t(j)-z(j))*z(j)*(1-z(j)); %3*1；
    end
%     delta2=delta2';%3*1;
    % 再求隐层给输入的误差;双曲双切函数求导;1-z^2
    delta1=zeros(3,1);
    for h=1:3
        %delta1(h)=sec(h)*whj(:,h)'*delta2;%3*1;
        delta1(h)=(1-hidden1(h)^2)*whj(:,h)'*delta2;%3*1;
        %delta1(h)=hidden1(h)*(1-hidden1(h))*whj(:,h)'*delta2;%3*1;
    end
%     delta1=delta1';%3*1;
    % 各层更新权值;
    % 更新whj;
    for j=1:n
        for h=1:3
            whj(j,h)=whj(j,h)+eta*delta2(j)*hidden1(h);
        end
    end
    % 更新wih;
    for h=1:3
        for i=1:n
            wih(h,i)=wih(h,i)+eta*delta1(h)*x(i);
        end
    end
    %记录误差
    e=z-t;
    sigma(num)=sum(e.^2);
    if max(z)>max_z
        max_z=max(z);
    end
    if min(z)<min_z
        min_z=min(z);
    end
    
end
max_z
min_z
plot(sigma);