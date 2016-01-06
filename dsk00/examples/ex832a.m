%《MATLAB及其在理工课程中的应用指南》第八章例8－3－2动画改进程序ex832a
% 三相感应电机旋转磁场的形成（坐标系不更新并画出磁极）
% 西安电子科技大学出版社出版  陈怀琛编著 1999年10月初版，2004年11月第二版
%
%感应电动机定子三相合成磁场矢量图
clear, clf, whitebg('w')
I=10; freq = 50; w = 2*pi*freq;               % 50 Hz角速度 (rad/s)
t = 0:1/5000:12.3/50;
Ia=I*sin(w*t); Ib=I*sin(w*t-2*pi/3); Ic=I*sin(w*t+2*pi/3); % A,B,C相电流
% 建立三个分量磁场的表达式：
kmag = 1/I;                % 选适当的绕组常数，把最大磁场归一化为1 
Baa = kmag * Ia * (cos(0) + j*sin(0)); 	% 括号中的项表示A磁场空间方向为0度
Bbb = kmag * Ib * (cos(2*pi/3) + j*sin(2*pi/3)); 	% B磁场空间方向为120度
Bcc = kmag * Ic * (cos(-2*pi/3) + j*sin(-2*pi/3)); 	% C磁场空间方向为-120度
Bnet = Baa + Bbb + Bcc; 			% 计算合成磁场 
% 分别画出合成磁场Bnet和三相磁场Baa,Bbb,Bcc的矢量幅值和方向，
% Bnet为红色，Baa为黑色，Bbb为蓝色，Bcc为磁灰色。
plot(Bnet,'k');	 % 画出合成磁场向量端点的轨迹作参考，它是一个园
set(gcf,'color','w')                        % 置图形背景色为白色
axis square;   axis([-2 2 -2 2]);hold on;
% 分别画出三相磁极对
theta=linspace(-pi/8,pi/8,15);				% 给出单个磁极的张角数组
th1=theta;th2=theta+pi/3;th3=theta+2*pi/3;	% 给出六个磁极的幅角数组
th4=theta+pi;th5=theta+4*pi/3;th6=theta+5*pi/3;
r=1.1*abs(Bnet(1));						% 给出磁极的半径，使之略大于Bnet的长度
% 依次用三种颜色的宽线条画出三对磁极
plot(r*cos(th1),r*sin(th1),'k',r*cos(th4),r*sin(th4),'k','LineWidth',6);
plot(r*cos(th2),r*sin(th2),'m',r*cos(th5),r*sin(th5),'m','LineWidth',6);
plot(r*cos(th3),r*sin(th3),'b',r*cos(th6),r*sin(th6),'b','LineWidth',6);
% 画出四个磁场相量，前三个方向固定，大小随时间变化，其合成磁场则成为旋转向量
% 用改变图形对象(直线)参数的方法做动画,坐标不必更新,速度快,动画连续
% 先设置几根直线线的初始位置,设置其图柄名,图柄参数'Erasemode'设为'xor'表示
% 当该对象被赋予新值后,原来的对象图形就不再保持
l1=plot([0 real(Baa(1))],[0 imag(Baa(1))]);	
set(l1,'erasemode','xor','LineWidth',2,'color','k')
l2=plot([0 real(Bbb(1))],[0 imag(Bbb(1))]);
set(l2,'erasemode','xor','LineWidth',2,'color','b')
l3=plot([0 real(Bcc(1))],[0 imag(Bcc(1))]);
set(l3,'erasemode','xor','LineWidth',2,'color','m')
l4=plot([0 real(Bnet(1))],[0 imag(Bnet(1))]);
set(l4,'erasemode','xor','LineWidth',2,'color','r')
% 不断给对象的数据参数xdata,ydata赋予新值
for ii = 1:length(t)
   set(l1,'xdata', [0 real(Baa(ii))],'ydata',[0 imag(Baa(ii))])
   set(l2,'xdata', [0 real(Bbb(ii))],'ydata',[0 imag(Bbb(ii))])
   set(l3,'xdata', [0 real(Bcc(ii))],'ydata',[0 imag(Bcc(ii))])
   set(l4,'xdata', [0 real(Bnet(ii))],'ydata',[0 imag(Bnet(ii))])
   fft(randn(2^8));                             % 减慢速度
   drawnow
end
hold off;
