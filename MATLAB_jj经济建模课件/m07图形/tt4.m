[x,y]=meshgrid(-2:0.2:2);
z=x.*y.*exp(-x.^2-y.^2);
[C,h] = contour(x,y,z,8);
clabel(C,h);
