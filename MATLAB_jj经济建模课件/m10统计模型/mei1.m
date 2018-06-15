mei
clf
plot(x1,y1,'*')
hold on
plot(x2,y2,'ro')
%ezplot('200*x/(0.05+x)',[0,1.2])
x=0.015:0.01:1.2;y=200*x./(0.05+x);
plot(x,y,'k')