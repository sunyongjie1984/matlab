clc,clear

x1=dsolve('Dx=r*x','x(0)=x0')

x2=dsolve('Dx=r*x*(1-x/xm)','x(0)=x0')

r=0.01;xm=1;x0=0.01;
syms x t
hold on
ezplot(r*x*(1-x/xm),[0,1])
ezplot(r*x,[0,1])
figure

ezplot(eval(x1),[0,1000]),hold on
ezplot(eval(x2),[0,1000])