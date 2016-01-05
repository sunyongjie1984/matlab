%《线性代数实验践及MATLAB入门》第四章4.9演示程序ag491
% 符号数学的用法初步
% 电子工业出版社出版  陈怀琛 龚杰民合著 2005年10月
%
echo on
syms x y t a u v w q,pause
r = x^2 + y^2,pause
theta = atan(y/x) ,pause
e = exp(i*pi*t) ,pause
f = cos(x)^2 + sin(x)^2,pause
f = simple(f) ,pause
diff(x^3) ,pause
int(x^3) ,pause
int(exp(-t^2)) ,pause
[int(x^a), int(a^x), int(x^a,a),    int(a^x,a)] ,pause
x=solve('a*x^2 + b*x + c = 0') ,pause
[u,v] = solve('a*u^2 + v^2 = 0', 'u - v = 1') ,pause
digits(28) ,pause
[x,y]=solve('sin(x+y)-exp(x)*y = 0',  'x^2-y = 2') ,pause
y = dsolve('Dy = -a*y') ,pause
y=dsolve('Dy = -a*y','y(0) = 1') ,pause
% 给出两个初始(边界)条件,pause
y= dsolve('D2y = -a^2*y',  'y(0) = 1', ' Dy(pi/a) = 0') ,pause
y = dsolve('(Dy)^2 + y^2 = 1','y(0) = 0') ,pause	
f=exp(-a*t)*cos(w*t) ,pause
F=laplace(f) ,pause
pretty(F) ,pause
%此命令用来改善公式可读性
