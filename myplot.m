% 画出自适应的坐标轴


function myplot(x,y)
% xyplot Plot 2D axes through the origin
%   Example 1:
%   t = linspace(0,2*pi,500); 
%   y1 = 80*sin(t); 
%   y2 = 100*cos(t);
%   xyplot(t,[y1;y2])
%
%   Example 2:
%   x = -2*pi:pi/10:2*pi;
%   y = sin(x);
%   plot(x,y)
%   xyplot

% PLOT
if nargin>0
    if nargin == 2
        plot(x,y);
    else
        display('   Not 2D Data set !')
    end
end
hold on;

% GET TICKS
X=get(gca,'Xtick');
Y=get(gca,'Ytick');

% GET LABELS
XL=get(gca,'XtickLabel');
YL=get(gca,'YtickLabel');

% GET OFFSETS
Xoff=diff(get(gca,'XLim'))./40;
Yoff=diff(get(gca,'YLim'))./40;

% DRAW AXIS LINEs
plot(get(gca,'XLim'),[0 0],'k');
plot([0 0],get(gca,'YLim'),'k');

% Plot new ticks
for i=1:length(X)
    plot([X(i) X(i)],[0 Yoff],'-k');
end;
for i=1:length(Y)
    plot([Xoff, 0],[Y(i) Y(i)],'-k');
end;

% ADD LABELS
text(X,zeros(size(X))-2.*Yoff,XL);
text(zeros(size(Y))-3.*Xoff,Y,YL);

box off;
% axis square;
axis off;
set(gcf,'color','w');

end



