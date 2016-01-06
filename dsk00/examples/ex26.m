%《MATLAB及其在理工课程中的应用指南》第二章第六节演示程序
% 西安电子科技大学出版社出版  陈怀琛编著 1999年10月初版，2004年11月第二版
%
% 求fibonacci数的程序和求素数的程序
echo off
disp('求fibonacci数的程序'),pause
echo on
R=input('输入fibonacci数的最大范围R= '),f=[1 1]; i=1;
while f(i)+f(i+1)<R f(i+2)=f(i)+f(i+1);i=i+1;
end
f,plot(f)

% 求素数的程序
echo off
disp('求素数(prime number)的程序'),pause
echo on
N=input('输入素数的最大范围N= '), x=2:N;
for u=2:sqrt(N)
   n=find(rem(x,u)==0 & x~=u);
   x(n)=[];
end,x

pause,x=rand(4,4), 
pause,mean(x)
%子程序是不能直接执行的,必须由主程序调用,因此下面的子程序只能阅读,不能执行
%function y = humps(x)
%HUMPS	A function used by QUADDEMO, ZERODEMO and FPLOTDEMO.
%	HUMPS(X) is a function with strong maxima near x = .3 and x = .9.
%	See QUADDEMO, ZERODEMO and FPLOTDEMO.
%	Copyright (c) 1984-94 by The MathWorks, Inc.

%y = 1 ./ ((x-.3).^2 + .01) + 1 ./ ((x-.9).^2 + .04) - 6;
