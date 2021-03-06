%《线性代数实践及MATLAB入门》第二版第十章例题程序ag1003
% 天体运动测量和轨迹拟合问题
% 电子工业出版社出版  陈怀琛 龚杰民合著 2005年10月初版，2008年10月第二版
%
theta=[0.88,1.1,1.42,1.77,2.14]'; 
r=[3, 2.3, 1.65, 1.25, 1.01]';
A=[ ones(5,1), r.*cos(theta)], B=r,
X=inv(A'*A)*A'*B
ezpolar('1.4509/(1-0.8111*cos(theta))'), 
hold on
polar(theta, r,'x'),  %画出测定点
axis([-4,8,-5,5])
rg=X(1)/(1-X(2)*cos(0.46))   % 求theta=0.46处的r