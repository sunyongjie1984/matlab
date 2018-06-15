clear
syms x y
z=sqrt(x^2+y^2-1)
ezsurf(z)
hold on
w=-sqrt(x^2+y^2-1)
ezsurf(w)