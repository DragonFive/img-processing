clc
f=[1 2;3 4]
g=mat2gray(f)   %把矩阵化为灰度图
gb=im2bw(f,0.6) %根据阈值把图片转化为二值图
gb=f>2
gbv=islogical(gb)
gbd=im2double(g)%把图片转化为double精度的
gbd=double(gb)    
gbd=im2double(im2bw(mat2gray(f),0.6))
gbd=double(f>2)