clc,clear
syms x y a
f=x*log(x)
diff(f)
diff(f,2)
diff(f,a,2)  

g=[5 6 8]
diff(g)

h=sym('6*x*y^2+cos(x*y)-x*y*sin(x*y)')
diff(diff(h,x),y) 		