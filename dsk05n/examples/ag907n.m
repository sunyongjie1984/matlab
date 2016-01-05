%《线性代数实践及MATLAB入门》第二版第九章例题程序ag907n
% 用MATLAB求特征根
% 电子工业出版社出版  陈怀琛 龚杰民合著 2005年10月初版，2008年10月第二版
%
A=[1,-1,2;0,2,1;0,0,-1];
B=2*A^3+A-5*eye(3);C=inv(A)+eye(3) 
fa=poly(A),ra=roots(fa)
fb=poly(B),rb=roots(fb)
fc=poly(C),rc=roots(fc)
