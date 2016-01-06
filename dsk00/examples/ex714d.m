%《MATLAB及其在理工课程中的应用指南》（第二版）第七章例7－1－4程序b
% 四连杆运动的分析计算:求全程运动并作动画
% 西安电子科技大学出版社出版  陈怀琛编著 1999年10月初版，2004年11月第二版
%
global L0 L1 L2 L3 th1 
L0=20;L1=8;L2=25; L3=20;            % 输入基线及三根杆的长度L1,L2,L3
w1=100;	                            % input('杆1角速度w1= (书上取100) [1/秒]');
theta1=linspace(0,2*pi,181);		% 杆1每圈分为180份，间隔2度。
theta3=1;	                        % input('对应于theta1最小值处的theta3近似值= (书上取1) [弧度]');
dt = 2*pi/180/w1;					% 杆1转2度对应的时间增量
th1=theta1(1);theta3(1)=fzero('ex714f',theta3);		% 求初始输出theta3
for i=2:181
   th1=theta1(i);
   theta3(i)=fzero('ex714f',theta3(i-1));   % 调用ex714f函数逐次求输出theta3
end
figure(1)
set(gcf,'color','w')                        % 置图形背景色为白色
subplot(1,2,1),plot(theta1,theta3);xlabel('theta1'),ylabel('theta3'),grid	%画曲线
w3 = diff(theta3)/dt;		 	            % 求杆3的角速度,注意求导数后数组长度小一
subplot(1,2,2),plot(theta1(2:length(theta1)),w3);grid
pause,figure(2),subplot(1,1,1),axis equal   % 设定第二张图，使纵横比例相同
axis([0,50,-20,20]),axis off
x0=10;y0=0;                                 % 左支点坐标
x1=x0+L1*cos(theta1);y1=L1*sin(theta1);     % 杆1右端点坐标
x2=x0+L0+L3*cos(theta3);y2=L3*sin(theta3);  % 杆3左端点坐标，即杆二右端点坐标
x3=x0+L0;y3=0;                              % 杆3右端点坐标
line([5,45],[0,0])                          % 画出基准线
h1=line([x0,x1(1),x2(1),x3(1)],[y0,y1(1),y2(1),y3],'Linewidth',3); % 将四个端点相联
set(h1,'erasemode','xor');                  % 设定更新数据的模式，把前一组数据的图形擦除
set(gcf,'color','w')                        % 置图形背景色为白色
for i1=1:1000
   i=mod(i1,180)+1;                         % 在前面算出的180度范围内的数据循环取值
	set(h1,'Xdata',[x0,x1(i),x2(i),x3],'Ydata',[y0,y1(i),y2(i),y3]) % 更新杆端数据
   fft(rand(2^14,1));                       % 等待一段时间，减慢更新速度
   drawnow                                  % 及时显示
end
