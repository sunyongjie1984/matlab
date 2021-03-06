%《线性代数实践及MATLAB入门》第二版第十章例题程序ag1004
% 理论力学中的刚体平衡问题
% 电子工业出版社出版  陈怀琛 龚杰民合著 2005年10月初版，2008年10月第二版
%
G1=200; G2=100; L1= 2; L2 = sqrt (2) ;	% 给原始参数赋值
theta1 = 30*pi/180; theta2 = 45*pi/180;	% 将度化为弧度
% 设则按此次序，系数矩阵A,B可写成下式
A=[1,0,0,0,1,0;0,1,0,0,0,1;0,0,0,0,-sin(theta1), cos(theta1);... 
        0,0,1,0,-1,0;0,0,0,1,0,-1;0,0,0,0, sin(theta2),cos(theta2)];
B=[0;G1;G1/2*cos(theta1);0;G2;-G2/2*cos(theta2)];
X = A\B					% 用左除求解线性方程组
