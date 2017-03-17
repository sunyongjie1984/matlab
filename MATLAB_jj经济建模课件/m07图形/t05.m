clc,clear
x=linspace(0,5,30); 
y=exp(x)+20;
z=2*x.^3+3*x+1;	
w=100*cos(x);
plot(x,y,x,z,'r*',x,w,'m+')
pause

plot(x,y,'m+')
pause

hold on
plot(x,z,'r*')
pause
plot(x,w,'g+')