%《线性代数实验践及MATLAB入门》程序
% 两个空间平面及其交线的生成程序
% 电子工业出版社出版  陈怀琛 龚杰民合著 2005年10月
%
zmax=10;dx=1;
[x,y]=meshgrid(-zmax:dx:zmax);
Funfcn1=input('给出第一个平面方程  ','s');
z1=eval(solve(Funfcn1,'z')); 
Funfcn2=input('给出第二个平面方程  ','s');
z2=eval(solve(Funfcn2,'z')); 
mesh(x,y,z1);hold on;
mesh(x,y,z2);pause
r01=abs(z1-z2)<=1;	%求两曲面z坐标差小于0.1的网格矩阵
zz1=r01.*z1;yy1=r01.*y;xx1=r01.*x; 	%求这些网格上的坐标值,即交线坐标值
plot3(xx1,yy1,zz1,'x');	%画出这些点
hold off,set(gcf,'color','w')