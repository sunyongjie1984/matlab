%《线性代数实验践及MATLAB入门》第八章例题程序ag852
% 超定方程解的实例
% 电子工业出版社出版  陈怀琛 龚杰民合著 2005年10月
%
clear,
datax = [1:5]';
datay=[ 0.2339, 0.3812, 0.5759, 0.8153, 0.9742 ]';		% 原始数据
A = [datax , ones(5,1)]; B = datay; c = A\B, r=1/c(1)	% 线性拟合
plot(datax,datay,'o'),hold on	% 绘出原始数据点图
xi=0:0.1:5; 
yi=c(1)*xi+c(2);  	% 设置51个取值点
A1 = datax,  
c0 = A1 \ B,		% 通过原点的线性拟合
plot(xi,yi,xi,c0*xi,':')		% 绘图
grid on
hold off
set(gcf,'color','w')