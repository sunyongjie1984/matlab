%《MATLAB及其在理工课程中的应用指南》第六章例6－2－3程序
% 斜面物体下滑
% 西安电子科技大学出版社出版  陈怀琛编著 1999年10月初版，2004年11月第二版
%
m1=input('m1= (书上为2) ');					 % 输入常数
m2=input('m2= (书上为4) ');
theta=input('theta【度】= (书上为30)');
theta=theta*pi/180;g=9.81;
A = [ m1*cos(theta),-m1, -sin(theta), 0;...		% 列出左端系数矩阵
      m1*sin(theta),  0,  cos(theta), 0;...
   	   0			 , m2, -sin(theta), 0;...
         0			 ,  0, -cos(theta), 1 ];
B = [ 0, m1*g, 0, m2*g]';					    % 列出右端系数矩阵	
X=A\B;									        % 用左除解线性方程组
a1=X(1),a2=X(2),N1=X(3),N2=X(4)