clc
f=[1 2;3 4]
g=mat2gray(f)   %�Ѿ���Ϊ�Ҷ�ͼ
gb=im2bw(f,0.6) %������ֵ��ͼƬת��Ϊ��ֵͼ
gb=f>2
gbv=islogical(gb)
gbd=im2double(g)%��ͼƬת��Ϊdouble���ȵ�
gbd=double(gb)    
gbd=im2double(im2bw(mat2gray(f),0.6))
gbd=double(f>2)