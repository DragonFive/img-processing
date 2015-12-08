% -------------------------------------------------------------------
% m_bp_back Performs bp algorithm 
% training_example ѵ�������ݼ�
% eta ѧϰ����
% ���ز���Ϊ��3��
%  Copyright 1992-2015 Ma XiaoLong
%  $Date: 2015/12/05 23:56:25$
% -------------------------------------------------------------------


function m_bp_back(training_example,eta)

[m,n]=size(training_example); %m �� n ��
%��ʼ��Ȩ��-0.5~0.5֮��
wih=rand(3,3)-0.5;
whj=rand(3,3)-0.5;
num_of_samples = m/2;
% ����ÿ������
max_z=-1;min_z=1;
for num=1:num_of_samples
    x=training_example(num,:)';%ȡһ������;3*1
    t=training_example(num_of_samples+num,:)';%ȡ������Ӧ�����;3*1;
    net2=wih*x;  %�����Ȩֵ��3*1;
    %������;
    hidden1=zeros(3,1);
    for i=1:3
       hidden1(i)=(exp(net2(i))-exp(-net2(i)))/(exp(net2(i))+exp(-net2(i)));% ����ʹ��˫��˫�к���������3*1;
         %hidden1(i)=1/(1+exp(-net2(i)));
    end
    %hidden1=hidden1';%3*1
    net3=whj*hidden1; %����Ȩֵ��;3*1
    %�������
    z=zeros(3,1);
    for i=1:n
        z(i)=1/(1+exp(-net3(i))); %�������sigmoid������������3*1;
    end
    % ����������з��򴫲�;
    % ���������������;sigmoid������ z*(1-z)
    delta2=zeros(3,1);
    for j=1:n
        delta2(j)=(t(j)-z(j))*z(j)*(1-z(j)); %3*1��
    end
%     delta2=delta2';%3*1;
    % �����������������;˫��˫�к�����;1-z^2
    delta1=zeros(3,1);
    for h=1:3
        %delta1(h)=sec(h)*whj(:,h)'*delta2;%3*1;
        delta1(h)=(1-hidden1(h)^2)*whj(:,h)'*delta2;%3*1;
        %delta1(h)=hidden1(h)*(1-hidden1(h))*whj(:,h)'*delta2;%3*1;
    end
%     delta1=delta1';%3*1;
    % �������Ȩֵ;
    % ����whj;
    for j=1:n
        for h=1:3
            whj(j,h)=whj(j,h)+eta*delta2(j)*hidden1(h);
        end
    end
    % ����wih;
    for h=1:3
        for i=1:n
            wih(h,i)=wih(h,i)+eta*delta1(h)*x(i);
        end
    end
    %��¼���
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