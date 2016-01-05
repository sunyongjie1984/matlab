%《线性代数实验践及MATLAB入门》程序
% 三个空间平面及其交线的生成程序
% 电子工业出版社出版  陈怀琛 龚杰民合著 2005年10月
%
zmax=20;dx=1;
[x,y]=meshgrid(-zmax:dx:zmax);
Funfcn1=input('给出第一个平面方程,例5.3.2取x+y-z=5  ','s');
z1=eval(solve(Funfcn1,'z')); 
Funfcn2=input('给出第二个平面方程，例5.3.2取2*x-3*y+z=3  ','s');
z2=eval(solve(Funfcn2,'z')); 
Funfcn3=input('给出第三个平面方程，例5.3.2取-5*x+2*y-2*z=0  ','s');
z3=eval(solve(Funfcn3,'z')); 
tol=input('绘制交线的容差tol= ')
if isempty(tol) tol=1;end
mesh(x,y,z1);hold on;
mesh(x,y,z2);mesh(x,y,z3);
r01=abs(z1-z2)<=tol;	%求两曲面z坐标差小于0.1的网格矩阵
zz1=r01.*z1;yy1=r01.*y;xx1=r01.*x; 	%求这些网格上的坐标值,即交线坐标值
plot3(xx1,yy1,zz1,'x');	%画出这些点
r02=abs(z1-z3)<=tol;	%求两曲面z坐标差小于0.1的网格矩阵
zz2=r02.*z1;yy2=r02.*y;xx2=r02.*x; 	%求这些网格上的坐标值,即交线坐标值
plot3(xx2,yy2,zz2,'x');	%画出这些点
r03=abs(z3-z2)<=tol;	%求两曲面z坐标差小于0.1的网格矩阵
zz3=r03.*z3;yy3=r03.*y;xx3=r03.*x; 	%求这些网格上的坐标值,即交线坐标值
plot3(xx3,yy3,zz3,'x');	%画出这些点
colormap('default')
set(gcf,'color','w')
disp('求三个平面的交点')
pause,hold off
[x0,y0,z0]=solve(Funfcn1,Funfcn2,Funfcn3)
double([x0,y0,z0]);
