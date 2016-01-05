%《线性代数实验践及MATLAB入门》第四章第九节演示程序ag26
% 符号运算（公式推导）工具箱
% 电子工业出版社出版  陈怀琛 龚杰民合著 2005年10月
%
echo on
disp('用符号工具箱表示及推导普通公式')
syms x y t a u v w q,pause
r = x^2 + y^2,pause
theta = atan(y/x) ,pause
e = exp(i*pi*t) ,pause
f = cos(x)^2 + sin(x)^2,pause
f = simple(f) ,pause
x=solve('a*x^2 + b*x + c = 0') ,pause
[x,y]=solve('sin(x+y)-exp(x)*y = 0',  'x^2-y = 2') ,pause
disp('用符号推导线性代数公式')
syms x y a b c d e f,pause
A=[a,b;c,d],pause
det(A),trace(A),pause
V=inv(A),pause
s1='a*x+b*y=e',pause
s2='c*x+d*y=f',pause
[x,y]=solve(s1,s2)
disp('用符号工具箱改变计算精度')
digits(28),pause
pi,pause
vpa(pi,100)