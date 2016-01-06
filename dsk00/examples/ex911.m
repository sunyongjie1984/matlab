%《MATLAB及其在理工课程中的应用指南》第九章例9－1－1程序
% 连续信号的MATLAB表述
% 西安电子科技大学出版社出版  陈怀琛编著 1999年10月初版，2004年11月第二版
%
clear, t0=0;tf=5;dt=0.05;t1=1; t=[t0:dt:tf];
% (1)单位脉冲信号,
% 在t1(t0≤t1≤tf)处有一持续时间为dt,面积为1的脉冲信号,其余时间均为零。
t=[t0:dt:tf];st=length(t);
n1=floor((t1-t0)/dt);		            % 求t1对应的样本序号
x1=zeros(1,st); 			            % 把全部信号先初始化为零
x1(n1)=1/dt;				            % 给出t1处的脉冲信号
subplot(2,2,1),stairs(t,x1)	            % 绘图，注意为何用stairs而不用plot命令
set(gcf,'color','w')                    % 置图形背景色为白色
axis([0,5,0,1.1/dt]) 
%(2)单位阶跃信号，
%信号从t0到tf，在t1(t0≤t1≤tf) 前为0，到t1处有一跃变，以后为1.
%	程序前几句即求t,st,n1的语句与上同，只把x1处改为x2
x2 = [zeros(1,n1-1),ones(1,st-n1+1)];   % 产生阶跃信号
subplot(2,2,3),stairs(t,x2)			    % 绘图
axis([0,5,0,1.1])
%(3)复数指数信号
u=-0.5;w=10;x3=exp((u+j*w)*t);
subplot(2,2,2),plot(t,real(x3)) 	    % 绘图,
subplot(2,2,4),plot(t,imag(x3)) 	    % 绘图,
pause,subplot(1,1,1)