clc,clear
syms x y z
f='3*x*sin(x)'
int (f)
int (f,0,2*pi)

g='x*y* cos(z)'
int(int(int(g,z,0,x*y),y,0,x),x,0,1)

h='exp(x^2)'
int(h)
int(h,0,2)
vpa(int(h,0,2f = exp(x^2)) )
quad('exp(x.^2)',0,2) 