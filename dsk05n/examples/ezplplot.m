%《线性代数实验践及MATLAB入门》程序
% 一个空间平面的生成程序
% 电子工业出版社出版  陈怀琛 龚杰民合著 2005年10月

zmax=10;dx=1;
[x,y]=meshgrid(-zmax:dx:zmax);
Funfcn=input('给出平面方程  ','s');
z1=eval(solve(Funfcn,'z')); 
mesh(x,y,z1);hold on;
set(gcf,'color','w')