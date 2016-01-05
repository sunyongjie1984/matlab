%《线性代数实验践及MATLAB入门》第四章第五节演示程序ag45
% 字符串函数库
% 电子工业出版社出版  陈怀琛 龚杰民合著 2005年10月

clear, echo on
s='abyzABYZ0189',pause
size(s),pause
abs(s),pause
setstr(abs(s)),pause
dec2hex(abs(s)),pause
s1=[' welcome ',s],pause
s2 =['a=5    ' ; 'b=2    '  ; 'c=a+b*b'],pause
for k=1:3 eval(s2(k,:)), end,pause
st = input(' s=表达式 ','s'); eval(st),pause
%disp('pi= ',pi),pause
%for i=1:10 fname='mydata'; eval(['load ',fname,int2str(i)]), end
st=sprintf(' 圆周率pi= %8.5f',pi),pause
disp(st),pause
x = 0:10:90; y = [x; sin(x*pi/180)];,pause
disp(sprintf('%10.2f  %12.8f\n',y))
echo off