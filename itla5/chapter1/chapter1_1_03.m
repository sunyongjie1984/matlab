% ????? z=xy, x+y-1=0, z=0 ????????
clear;clc;

min=0; % ???
max=1; % ???
res=0.001; % ???
alpha=0.6; % ?????
View=[-25 22]; % ??

% z=xy
[x1 y1]=meshgrid(min:res:max);
z1=x1.*y1;
subplot(1,2,1)
mesh(x1,y1,z1,'LineStyle','none','FaceAlpha',1,'FaceColor','r')
axis equal
xlabel('x')
ylabel('y')
zlabel('z')
set(gca,'yDir','reverse','View',View)
hold on
subplot(1,2,2)
mesh(x1,y1,z1,'LineStyle','none','FaceAlpha',alpha,'FaceColor','r')
axis equal
xlabel('x')
ylabel('y')
zlabel('z')
set(gca,'yDir','reverse','View',View)
hold on

% x+y-1=0
[x2 z2]=meshgrid(min:res:max);
y2=1-x2;
subplot(1,2,1)
mesh(x2,y2,z2,'LineStyle','none','FaceAlpha',1,'FaceColor','g')
subplot(1,2,2)
mesh(x2,y2,z2,'LineStyle','none','FaceAlpha',alpha,'FaceColor','g')

% z=0
[x3 y3]=meshgrid(min:res:max);
z3=zeros((max-min)/res+1);
subplot(1,2,1)
mesh(x3,y3,z3,'LineStyle','none','FaceAlpha',1,'FaceColor','b')
hold off
subplot(1,2,2)
mesh(x3,y3,z3,'LineStyle','none','FaceAlpha',alpha,'FaceColor','b')
hold off