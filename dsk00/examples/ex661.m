%《MATLAB及其在理工课程中的应用指南》第六章例6－6－1程序
% 振动合成和拍频现象
% 西安电子科技大学出版社出版  陈怀琛编著 1999年10月初版，2004年11月第二版
%
t=0:0.001:10;			% 给出时间轴上10秒钟，分10000个点
% 输入两组信号的振幅、相位和频率
a1=input('振幅1= (书上取1.2) ');
w1=input('频率1= (书上取300) '); 
a2=input('振幅2= (书上取1.8) ');
w2=input('频率2= (书上取310) '); 
y1=a1*sin(w1*t); 			                % 生成两个正弦波
y2=a2*sin(w2*t);
y=y1+y2;								    % 将两个波叠加
subplot(3,1,1),plot(t,y1),ylabel('y1')	    % 画出曲线
subplot(3,1,2),plot(t,y2),ylabel('y2')
subplot(3,1,3),plot(t,y),ylabel('y'),xlabel('t')
set(gcf,'color','w')                        % 置图形背景色为白色
pause
sound(y1);pause(2)		                    % 产生声音
sound(y2);pause(2)
sound(y),pause
subplot(1,1,1)		                        % 绘图复原
