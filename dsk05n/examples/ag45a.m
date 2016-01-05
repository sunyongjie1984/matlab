%《线性代数实验践及MATLAB入门》第四章第五节演示程序ag45
% 字符串函数库
% 电子工业出版社出版  陈怀琛 龚杰民合著 2005年10月

clear, echo on
s='abyzABYZ0189',pause
size(s),pause
disp('显示字符串的ASCII码')
abs(s),pause
setstr(abs(s)),pause
disp('将字符串的ASCII码用16进制表示')
dec2hex(abs(s)),pause
disp('将两组字符串串联')
s1=[' welcome ',s],pause
disp('将字符串表示的方程绘直线'),pause
figure(1)
ezplot('3*x-2*y+2'),hold on,pause
ezplot('-x+2*y-2'),pause
disp('将字符串表示的方程绘三维曲面'),pause
figure(2)
ezmesh('3*x-2*y+2'),hold on,pause
ezsurf('-x+2*y-2'),pause
echo off