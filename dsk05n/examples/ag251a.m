%《线性代数实验践及MATLAB入门》第二章第五节演示程序一ag251a
% 二维绘图
% 电子工业出版社出版  陈怀琛 龚杰民合著 2005年10月

format, clear i ,echo on
Y=5*(rand(1,10)-.5),disp(' ')
pause,plot(Y,'b','linewidth',2)
pause, title('my first plot'), xlabel('n'), ylabel('Y'),grid
disp('根据方程ax+by=c绘制直线'),disp(' x=-5:5; y=-(a*x+c)/b; plot(x,y)'),pause
disp('设方程为2x+3y1=4及x-2y2=3'),pause
pause, x=-5:5; y1=-(2*x+4)/3; plot(x,y1,'linewidth',2)
pause, x=-5:5; y2=(x-3)/2; plot(x,y2,'linewidth',2)
disp('绘制多根曲线的四种方法（讲两种）'),disp(' '),pause
disp('一。用 plot(x,[y1,y2,...]'),disp(' '),pause
plot(x,[y1;y2],'linewidth',2)
disp('二。用 hold 命令'),disp(' '),pause
clf, plot(x,y1,'linewidth',2), hold on, 
pause,plot(x,y2,'bo','linewidth',2),hold off
figure(2)
pause, t=0:0.5:4*pi; y3=exp(-0.1*t).*sin(t); plot(t,y3,'linewidth',2), hold on,pause
pause, t=0:0.5:4*pi; y4=exp(-0.1*t).*sin(t+1); plot(t,y4,'r','linewidth',4),pause
pause,z=0:0.1:2*pi;x=sin(z);y=cos(z);
pause,subplot(1,2,1),plot(x,y),
pause,subplot(1,2,2),plot(x,y),axis('equal'),axis([-1, 1, -1, 1])
echo off

