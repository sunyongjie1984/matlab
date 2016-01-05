%《线性代数实践及MATLAB入门》第二版第十章例题程序ag1002
% 坐标测量仪测定中的拟合问题
% 电子工业出版社出版  陈怀琛 龚杰民合著 2005年10月初版，2008年10月第二版
%
x=[-3:3]';  			% 把x,y赋值为列向量
y=[3.03,3.90,4.35,4.50,4.40,4.02,3.26]';	
A=[2*x, 2*y, ones(size(x))] 	% 按（2）式求出系数矩阵
B=x.^2+y.^2
c=inv(A'*A)*A'*B,  	% 求超定方程的解，得出c
r=sqrt(c(3)+c(1)^2+c(2)^2)	% 由c求出r
