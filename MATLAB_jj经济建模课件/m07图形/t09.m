
%[x,y]=meshgrid(-1:0.05:1);
x=-10:1:10;
y=-10:1:10;
[x,y]=meshgrid(x,y);
z=x.^2+y.^2;
surf(x,y,z)
title('Ðý×ªÅ×ÎïÃæÍ¼');

%mesh(x,y,z)

%axis([-1 1 -1 1 0 0.5])