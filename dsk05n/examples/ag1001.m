%《线性代数实践及MATLAB入门》第二版第十章例题程序ag1001
% 多项式插值问题
% 电子工业出版社出版  陈怀琛 龚杰民合著 2005年10月初版，2008年10月第二版
%
A=[1,0,0,0;1,1,1,1;1,2,4,8;1,3,9,27],  
b=[3;0;-1;6],  
s=rref([A,b])
a=A\b,pause
ezplot('3-2*t-2*t^2+t^3')
hold on,grid on
plot([0:3], [3,0,-1,6], 'x')
line([1.5,1.5],[-2,6] )
axis([-1,4,-2,8])
t1=1.5;
p1=3-2*t1-2*t1^2+t1^3
plot(t1,p1,'o')             % 