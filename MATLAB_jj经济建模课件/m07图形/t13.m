clear
[x,y]=meshgrid(-8:.5:8);
R=sqrt(x.^2+y.^2)+eps;
z=sin(R)./R;
surf(z)
shading  interp
axis  off
colormap( winter )
%