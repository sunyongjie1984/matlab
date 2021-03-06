%《MATLAB及其在理工课程中的应用指南》第七章例7－1－4程序b
% 四连杆运动的分析计算:求全程运动
% 西安电子科技大学出版社出版  陈怀琛编著 1999年10月初版，2004年11月第二版
%
global L0 L1 L2 L3 th1 
L0=20;L1=8;L2=25; L3=20;% 输入基线及三根杆的长度L1,L2,L3
w1=input('杆1角速度w1= (书上取100) [1/秒]');
theta1=linspace(0,2*pi,181);		                %杆1每圈分为180份，间隔2度。
theta3=input('对应于theta1最小值处的theta3近似值= (书上取1) [弧度]');
dt = 2*pi/180/w1;					                % 杆1转2度对应的时间增量
th1=theta1(1);theta3(1)=fzero('ex714f',theta3);		%求初始输出theta3
for i=2:181
   th1=theta1(i);
   theta3(i)=fzero('ex714f',theta3(i-1));           % 调用ex714f函数逐次求输出theta3
end
subplot(1,2,1),plot(theta1,theta3);xlabel('theta1'),ylabel('theta3'),grid	% 画曲线
set(gcf,'color','w')                                % 置图形背景色为白色
w3 = diff(theta3)/dt;		 	                    % 求杆3的角速度,注意求导数后数组长度小一
subplot(1,2,2),plot(theta1(2:length(theta1)),w3);grid
