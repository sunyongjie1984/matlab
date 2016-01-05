%《线性代数实验践及MATLAB入门》第二章第六节演示程序ag26
% M文件及程序调试
% 电子工业出版社出版  陈怀琛 龚杰民合著 2005年10月

% 求fibonacci数的程序
R=input('输入fibonacci数的最大范围R= '),f=[1 1]; i=1;
while f(i)+f(i+1)<R f(i+2)=f(i)+f(i+1);i=i+1;
end
f,plot(f)

% 求素数的程序
disp('求素数(prime number)的程序'),pause
N=input('输入素数的最大范围N= '), x=2:N;
for u=2:sqrt(N)
   n=find(rem(x,u)==0 & x~=u);
   x(n)=[];
end,x

%子程序是不能直接执行的,必须由主程序调用,因此下面的子程序只能阅读,不能执行
%function y = humps(x)
%HUMPS	A function used by QUADDEMO, ZERODEMO and FPLOTDEMO.
%	HUMPS(X) is a function with strong maxima near x = .3 and x = .9.
%	See QUADDEMO, ZERODEMO and FPLOTDEMO.
%	Copyright (c) 1984-94 by The MathWorks, Inc.

%y = 1 ./ ((x-.3).^2 + .01) + 1 ./ ((x-.9).^2 + .04) - 6;



