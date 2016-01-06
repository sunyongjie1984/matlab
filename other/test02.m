x=0:pi/50:2*pi;
y=sin(x);
plot(x,y);
grid on;
hold on;
line([pi/2,pi/2],[sin(pi/2)-1],'linestyle',':','color','r');