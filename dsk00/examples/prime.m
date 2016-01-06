%《MATLAB及其在理工课程中的应用指南》第二章第六节演示程序
% 西安电子科技大学出版社出版  陈怀琛编著 1999年10月初版，2004年11月第二版
%
% 求素数的程序
%
disp('求素数(prime number)的程序'),pause
N=input('输入素数的最大范围N= '), x=2:N;
for u=2:sqrt(N)
   n=find(rem(x,u)==0 & x~=u);
   x(n)=[];
end,x
