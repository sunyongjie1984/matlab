%《MATLAB及其在理工课程中的应用指南》第九章例9－1－6程序
% 方波表为多阶正弦波之和
% 西安电子科技大学出版社出版  陈怀琛编著 1999年10月初版，2004年11月第二版
%
t = 0:.1:10;						        % 设定一个时间数组，有101个点
y = sin(t);	plot(t,y),figure(gcf),pause     % 频率为w=1(f=1/2π)的正弦基波
y = sin(t) + sin(3*t)/3; plot(t,y), pause 	% 叠加三次谐波
%  用1，3，5，7，9次谐波叠加
y = sin(t) + sin(3*t)/3 + sin(5*t)/5 + sin(7*t)/7 + sin(9*t)/9;plot(t,y)
% 为了绘制三维曲面，要把各次波形数据存为一个三维数组，因此必须
% 重新定义y，重编程.由于拟求至19次谐波，把点取密一些。
t = 0:.031:3.14;	
y = zeros(10,max(size(t))); x = zeros(size(t));
for k=1:2:19
    x = x + sin(k*t)/k; y((k+1)/2,: ) = x;
end                                     
%  将各波形迭合绘出
pause, plot(t,y(1:9,: ))
set(gcf,'color','w')                        % 置图形背景色为白色
%  将各波形绘成三维网格图，看出增加谐波阶次对方波逼近程度的影响
pause, mesh(t,[1:10],y), pause
clc
