%《MATLAB及其在理工课程中的应用指南》第八章例8－3－2程序
% 三相感应电机旋转磁场的形成
% 西安电子科技大学出版社出版  陈怀琛编著 1999年10月初版，2004年11月第二版
%
%感应电动机定子三相合成磁场矢量图
clear, clf, whitebg('w')
I=10; freq = 50; w = 2*pi*freq;               % 50 Hz角速度 (rad/s)
t = 0:1/5000:1.2/50;
Ia=I*sin(w*t); Ib=I*sin(w*t-2*pi/3); Ic=I*sin(w*t+2*pi/3); % A,B,C相电流
% 建立三个分量磁场的表达式：
kmag = 1/I;                                         % 选适当的绕组常数，把最大磁场归一化为1 
Baa = kmag * Ia * (cos(0) + j*sin(0)); 	            % 括号中的项表示A磁场空间方向为0度
Bbb = kmag * Ib * (cos(2*pi/3) + j*sin(2*pi/3)); 	% B磁场空间方向为120度
Bcc = kmag * Ic * (cos(-2*pi/3) + j*sin(-2*pi/3)); 	% C磁场空间方向为-120度
Bnet = Baa + Bbb + Bcc; 			                % 计算合成磁场 
% 分别画出合成磁场Bnet和三相磁场Baa,Bbb,Bcc的矢量幅值和方向，
% Bnet为红色，Baa为黑色，Bbb为蓝色，Bcc为磁灰色。
for ii = 1:length(t)
    plot(Bnet,'k');	                                % 画出合成磁场向量端点的轨迹作参考，它是一个园
    set(gcf,'color','w')                            % 置图形背景色为白色
    hold on;
    % 画出四个磁场相量，前三个方向固定，大小随时间变化，其合成磁场则成为旋转向量
    plot([0 real(Baa(ii))],[0 imag(Baa(ii))],'k','LineWidth',2);	
    plot([0 real(Bbb(ii))],[0 imag(Bbb(ii))],'b','LineWidth',2);
    plot([0 real(Bcc(ii))],[0 imag(Bcc(ii))],'m','LineWidth',2);
    plot([0 real(Bnet(ii))],[0 imag(Bnet(ii))],'r','LineWidth',3);
    axis square;   axis([-2 2 -2 2]);drawnow;       % 立即绘图
    hold off;
end
