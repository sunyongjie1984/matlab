%《线性代数实验践及MATLAB入门》第四章第一节演示程序ag41
% 数据处理函数库
% 电子工业出版社出版  陈怀琛 龚杰民合著 2005年10月

format,echo off,disp(' ')
disp('十个学生的身高及三门课程分数列表如下:'),pause
data=[154,49,83,67;...
158,99,81,75;...
155,100,68,86;...
145,63,75,96;...
145,63,75,96;...
141,55,65,75;...
155,56,64,85;...
147,89,87,77;...
147,96,54,100;...
145,60,76,67]
pause,disp('max(data)求各列最大值'),pause,max(data),pause
disp('min(data)求各列最小值'),pause,min(data),pause
disp('mean(data)求各列平均值'),pause,mean(data),pause
disp('std(data)求各列标准差'),pause,std(data),pause
disp('median(data)求各列中间元素'),pause,median(data),pause,disp(' ')
disp('sort(data)各列元素排序'),pause,sort(data),pause,disp(' ')
%disp('cumtrapz(data)各列元素累计积分'),pause,cumtrapz(data),pause,disp(' ')
disp('x=rand(1,1000);hist(x)'),pause,
x=rand(1,1000);subplot(1,2,1),hist(x),pause,disp(' ')
disp('y=randn(1,1000);hist(y,50)'),pause,
y=randn(1,1000);subplot(1,2,2),hist(y,50),pause,disp(' ')
echo on,R=corrcoef(x,y)
pause,cov(x,y),
pause,t=0:.001:3; u=sin(300*t)+2*cos(200*t) ;
U=fft(u);subplot(1,2,1),plot(abs(U),'linewidth',2)
pause,v=axis,pause,disp(' ')
pause,subplot(1,2,2),plot(abs(U),'linewidth',2)
pause,axis([0,300,0,3000])
echo off,disp('驱动声音'),disp(' ')
disp('sound(u)'),pause,sound(u)
