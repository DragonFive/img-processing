function myImshow(img,argTitle)
persistent myNumOfImg %��¼������Ҫ��ͼƬ����;
persistent M %��¼���е�ͼƬ
persistent Title ; % �������;
if isempty(myNumOfImg)
    myNumOfImg=0;
    M=cell(0);
    Title=cell(0);
end
    
if isequal(img,0) %��ʾ����
    h=ceil(sqrt(myNumOfImg)); %��
    w=ceil(myNumOfImg*1.0/h);  %��
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
