%《MATLAB语言入门及应用指南》第七章例7－2－2程序
% 悬臂梁的变形计算
% 西安电子科技大学出版社出版  陈怀琛编著 1999年10月初版，2004年11月第二版
%
clear
L=2; P=2000; L1=1.5;	            % 给出常数
E = 200e9; I=2e-5;
x = linspace(0,L,101); dx=L/100;	% 将x分100段,步长为L/100
n1=L1/dx+1;							% 确定x=L1处对应的下标
M1 = -P*( L1-x(1:n1)); 	 	        % 第一段弯矩赋值
M2 = zeros(1,101-n1);	 	        % 第二段弯矩赋值（全为零）
M = [M1,M2];			            % 全梁的弯矩
A = cumsum(M)*dx/(E*I);	            % 对弯矩积分求转角
Y = cumsum(A)*dx;		            % 对转角积分求挠度
subplot(3,1,1),plot(x,M),grid	 	% 绘弯矩图
subplot(3,1,2),plot(x,A),grid	 	% 绘弯矩图
subplot(3,1,3),plot(x,Y),grid	 	% 绘弯矩图
set(gcf,'color','w')                % 置图形背景色为白色
