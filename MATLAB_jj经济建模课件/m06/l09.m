clc,clear

dsolve('Dy=1')
dsolve('Dy=x')

[y1,y2]=dsolve('Dx=y','Dy=x')
[y3,y4]=dsolve('Dx=y','Dy=x','x(0)=0','y(0)=1')

g='D2y=-4*y'
y5=dsolve(g)
y6=dsolve(g,'y(0)=1,Dy(pi/3)=0' )
ezplot(y6) 

x=dsolve('6*D2x-g*x-g=0','x(0)=0,Dx(0)=0')
pretty(x)
simple(x)
