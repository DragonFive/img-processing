a1=0;b1=1;a2=1;b2=2;
x=-10:1:10;
x=linspace(-10,10,20)
f=b2*exp((-1*abs(x-a1)/b1+abs(x-a2)/b2))/b1;
myplot(x,f);

title('ºÇºÇ');xlabel('x');
ylabel('ËÆÈ»±È');