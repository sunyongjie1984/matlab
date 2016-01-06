%《MATLAB及其在理工课程中的应用指南》第七章例7－1－6程序
% 圆柱体平面运动的分析
% 西安电子科技大学出版社出版  陈怀琛编著 1999年10月初版，2004年11月第二版
%
r=1; Q=100; g=9.81;				% 输入常数
f=0.1; v0=3; w0=2; 
J = Q*r^2/2/g; F=f*Q;			% 要计算的常数
wdot = F*r/J;						% 绕质心转动加速方程
vdot = -F/(Q/g); 					% 质心线加速方程
t1 = (v0-w0*r)/(wdot*r-vdot)	% 求t1的方程
v = v0 + vdot*t1					% 求v 的方程
