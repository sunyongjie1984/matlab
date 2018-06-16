% 
% x = [0:1:10]
% y = 2 * x +1
% plot(x, y)
% 
% % x + 2y + 3z = 6
% % z = ( 6 - x - 2y ) / 3
% 
% x = [ 0 : 1 : 10 ]
% y = [ 0 : 1 : 10 ]
% z = ( 6 - x - 2 * y ) / 3
% plot3( x, y, z )

% t=0:pi/100:20*pi; 
% x=sin(t); 
% y=cos(t); 
% z=t.*sin(t).*cos(t); 
% plot3(x,y,z); 
% title('Line in 3-D Space'); 
% xlabel('X');ylabel('Y');zlabel('Z')


% A=[33.5   34.5   34.8   34.8   34.5   35.0   35.0   34.9   34.7
%    33.6   34.8   35.1   35.2   35.1   35.1   35.1   35.1   34.8
%    34.1   35.0   35.1   35.3   35.1   35.1   35.0   35.1   34.8
%    34.0   34.5   35.0   35.1   34.8   34.8   34.7   34.6   34.5]
% B=[34.6   34.6   34.8   34.5   34.5   34.7   34.6   33.6   34.3
%    34.8   35.0   34.8   34.8   34.8   34.7   34.6   33.9   34.6
%    35.0   35.0   34.8   34.7   35.0   34.8   34.8   34.4   34.6
%    35.2   35.2   35.2   35.0   35.1   35.0   34.8   34.7   35]
% [X, Y] = meshgrid(1:9,1:4);
% surf(X,Y,A)
% hold on
% surf(X,Y,B)
% hold off

% [a,b]=meshgrid(linspace(-2,2,20));
% mesh(a.^2,a,b);%??x=y^2
% hold on;
% mesh(1-b,a,b);%??x+z=1
% [A,B,C]=meshgrid(linspace(-3,3,20));
% h=contourslice(A,B,C,A-B.^2,1-b,a,b,[0 0]);%????
% set(h,'edgecolor','r','linewidth',2);
% view(80,30);

x=[-2:0.01:2];y=[-2:0.01:2];
[X,Y]=meshgrid(x,y);
Z = ( 6 - X - 2 * Y ) / 3
% Z=1-X-Y;

mesh(X,Y,Z)

% clear all
% clc;
% [x,y] = meshgrid(-2:0.1:2);
% z1 = x.^2-2*y.^2;
% z2 = x.^2+y.^2-5;
% mesh(x,y,z1);
% hold on;
% mesh(x,y,z2);
% r0 = (abs(z1-z2)<=0.1);
% zz = r0.*z1;
% yy = r0.*y;
% xx = r0.*x;
% plot3(xx(r0~=0), yy(r0~=0), zz(r0~=0), '-k*');
% colormap(cool)
% hold off
