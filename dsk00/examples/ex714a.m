%《MATLAB及其在理工课程中的应用指南》第七章例7－1－4程序a
% 四连杆运动的分析计算:求瞬时运动
% 西安电子科技大学出版社出版  陈怀琛编著 1999年10月初版，2004年11月第二版
%
global L0 L1 L2 L3 th1 
L0=20;L1=8;L2=25; L3=20;                                % 输入基线及三根杆的长度L1,L2,L3
theta1=input('当前角theta1=(书上取0)   ');
w1=input('杆1角速度w1=(书上取100)  ');
theta3=input('对应于theta1的theta3近似值=(书上取1)  ');
th1=theta1;theta3=fzero('ex714f',theta3);		        % 求初始输出theta3
theta2 = asin(( L3*sin(theta3)- L1*sin(theta1))/L2);    % 计算三角关系
w3 = L1*w1*cos(pi/2-theta1+theta2)/ (L3*cos(theta3-pi/2-theta2))
