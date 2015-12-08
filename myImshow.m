function myImshow(img,argTitle)
persistent myNumOfImg %记录最终需要的图片个数;
persistent M %记录所有的图片
persistent Title ; % 保存标题;
if isempty(myNumOfImg)
    myNumOfImg=0;
    M=cell(0);
    Title=cell(0);
end
    
if isequal(img,0) %表示结束
    h=ceil(sqrt(myNumOfImg)); %宽
    w=ceil(myNumOfImg*1.0/h);  %高
    for i=1:myNumOfImg
        subplot(w,h,i);
        imshow(M{i},[]);
        title(Title{i});
    end
    clear myNumOfImg;clear Title;clear M;
else
    myNumOfImg=myNumOfImg+1;
    M{myNumOfImg}=img;
    if nargin==2
        Title{myNumOfImg}=argTitle;
    else
        Title{myNumOfImg}='';
    end

end
