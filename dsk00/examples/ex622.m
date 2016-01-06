%《MATLAB及其在理工课程中的应用指南》第六章例6－2－2程序
% x,y两方向运动合成和求角动量,李萨如图形
% 西安电子科技大学出版社出版  陈怀琛编著 1999年10月初版，2004年11月第二版
%
clear all;     
fprintf('输入 x(t) 的方程; 例如, t.*cos(t) \n');
x = input(': ','s');                        % 读入字符串
fprintf('输入 y(t) 的方程; 例如, t.*sin(t) \n'); 
y = input(': ','s');
fprintf('输入延续时间; \n');
tf = input(' tf= ');
Ns=100;t=linspace(0,tf,Ns);dt=tf/(Ns-1);    % 分Ns个点,求出时间增量dt
xPlot=eval(x);yPlot=eval(y);
% 计算各点x(t), y(t)的近似导数和角动量，注意导数序列长度比原函数少一。
p_x = diff(xPlot)/dt;                       % p_x = M dx/dt 
p_y = diff(yPlot)/dt;                       % p_y = M dy/dt 
LPlot = xPlot(1:Ns-1).* p_y - yPlot(1:Ns-1).* p_x;
% LPlot = cross([p_x,p_y],[xPlot1:Ns-1),yPlot1:Ns-1)]);	% 用叉乘函数cross时的语句
% 画出轨迹及角动量随时间变化的曲线
clf; figure(gcf);                           % 清图形窗并把它前移
set(gcf,'color','w')                        % 置图形背景色为白色
subplot(1,2,1),  plot(xPlot,yPlot);
xlabel('x'); ylabel('y');
axis('equal');grid                          % 使两轴比例相同
subplot(1,2,2),  plot(t(1:Ns-1),LPlot);
xlabel('t'); ylabel('角动量');grid
pause,axis('normal');                       % 恢复轴系自动标定

