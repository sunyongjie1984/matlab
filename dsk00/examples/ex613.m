%《MATLAB及其在理工课程中的应用指南》第六章例6－1－3程序
% 用曲线拟合数据
% 西安电子科技大学出版社出版  陈怀琛编著 1999年10月初版，2004年11月第二版
%
clear,
datax = [1:5]'; datay=[ 0.2339, 0.3812, 0.5759, 0.8153, 0.9742 ]';  % 原始数据
A = [datax , ones(5,1)]; B = datay; a = A\B, r=1/a(1)	            % 线性拟合
set(gcf,'color','w')                % 置图形背景色为白色
plot(datax,datay,'o'),hold on	    % 绘出原始数据点图
xi=0:0.1:5; yi=a(1)*xi+a(2);        % 设置51个取值点
A1 = datax,  a0 = A1 \ B,		    % 通过原点的线性拟合
plot(xi,yi,xi,a0*xi,':')		    % 绘图
N=length(datax); A2=[datax.^2, datax ,ones(N,1)]; a2=A2\B	        % 二次拟合
plot(xi,a2(1)*xi.^2+a2(2)*xi+a2(3),'--')	                        % 绘二次拟合曲线
hold off