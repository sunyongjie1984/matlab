%《MATLAB及其在理工课程中的应用指南》第八章例8－4－3程序a
% 各种调制方法的波形及频谱
% 西安电子科技大学出版社出版  陈怀琛编著 1999年10月初版，2004年11月第二版
%
clf,format compact,t=0:0.001:1;
A0=10,w0=100,phi0=0
x=A0.*cos(w0*t+phi0);                       % 原始信号表达式
subplot(3,1,1),plot(t,x),hold
set(gcf,'color','w')                        % 置图形背景色为白色
xlabel('t'),legend('载频信号')
dA=input('振幅增量=');dw=input('频偏=');dphi=input('相移=');
y=(10+dA).*cos((w0+dw).*t+dphi);            % 经综合调制后的信号表达式
subplot(3,1,2),
plot(t,y),legend('调制波形')       		    % 调制后波形的绘制
subplot(3,1,3),
Y=fft(y);plot(abs(Y)),                      % 经综合调制后的信号频谱
axis([0,50,0,5000]),legend('信号频谱')
