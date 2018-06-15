hold off
t=0:0.02:2*pi;
subplot(1,2,1)
polar(t,cos(2*t),'g*')
subplot(1,2,2)
polar(t,2*(1+cos(t)),'r*')
