%《MATLAB及其在理工课程中的应用指南》第七章例7－1－1程序
% 求平衡杆系的支撑反力
% 西安电子科技大学出版社出版  陈怀琛编著 1999年10月初版，2004年11月第二版
%
G1=200; G2=100; L1= 2; L2 = sqrt (2) ;	%给原始参数赋值
theta1 =30*pi/180; theta2 = 45*pi/180;
% 设X=[ Nax, Nay, Nbx, Nby, Ncx, Ncy ],则按此次序，系数矩阵A,B可写成下式
A=[1,0,0,0,1,0;0,1,0,0,0,1;0,0,0,0,-sin(theta1), cos(theta1);... 
0,0,1,0,-1,0;0,0,0,1,0,-1;0,0,0,0, sin(theta2), cos(theta2)]
B=[0;G1;G1/2*cos(theta1);0;G2;-G2/2*cos(theta2)]
X = A\B;					%用左除求解线性方程组
disp('Nax, Nay, Nbx, Nby, Ncx, Ncy')		% 显示结果
disp(X')
