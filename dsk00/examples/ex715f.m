%《MATLAB及其在理工课程中的应用指南》第七章例7－1－5调用的子程序
% 空气阻力下的抛射运动微分方程
% 西安电子科技大学出版社出版  陈怀琛编著 1999年10月初版，2004年11月第二版
%
function rdot=ex715f(t,r)
c = 0.01; g = 9.81; m=1;		% 给出空气阻力系数及重力加速度 (m/s^2)
vm=sqrt(r(3)^2+r(4)^2); 	    % 速度大小
rdot = [ r(3); r(4); -c*vm*r(3)/m; -c*vm*r(4)/m - m*g ];	% 运动方程
