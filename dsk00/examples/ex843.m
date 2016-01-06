%《MATLAB及其在理工课程中的应用指南》第八章例8－4－3程序
% 调幅、调频、调相波形及频谱
% 西安电子科技大学出版社出版  陈怀琛编著 1999年10月初版，2004年11月第二版
%
clf,format compact,t=0:0.001:1;
A0=10,w0=100,phi0=0
x=A0.*cos(w0*t+phi0);                   % 原始信号表达式
subplot(3,1,1),plot(t,x),hold on	    % 未调制波形的绘制
set(gcf,'color','w')                    % 置图形背景色为白色
xlabel('t'),ylabel('载频信号')
dA=input('振幅增量=(三次运行,书上分别取 5*sin(0.1*w0*t), 0, 0) ');
dw=input('频偏=(三次运行,书上分别取 0, 5*sin(0.1*w0*t, 0) ');
dphi=input('相移=(三次运行,书上分别取 0, 0, 5*sin(0.1*w0*t)) ');
y=(10+dA).*cos((w0+dw).*t+dphi);        % 经综合调制后的信号表达式
subplot(3,1,2),            
plot(t,y),ylabel('调制波形')    		% 调制后波形的绘制
subplot(3,1,3),
plot(t,y-x),ylabel('y-x')    		    % 调制前后波形之差的绘制
pause,subplot(3,1,1),
plot(t,y,'r')                   		% 把调制后波形叠加在原来波形上
