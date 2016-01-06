%《MATLAB及其在理工课程中的应用指南》第七章例7－1－4调用的子程序
% 四连杆几何方程
% 西安电子科技大学出版社出版  陈怀琛编著 1999年10月初版，2004年11月第二版
%
function y=ex714f(x)
global L0 L1 L2 L3 th1
y=L1.*cos(th1)+L2*sqrt(1-(L3*sin(x)-L1*sin(th1)).^2/L2/L2)-L3*cos(x)-L0;
