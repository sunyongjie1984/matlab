%《MATLAB及其在理工课程中的应用指南》第八章例8－4－2程序
% Smith阻抗圆图的绘制(解实数方程方法)
% 西安电子科技大学出版社出版  陈怀琛编著 1999年10月初版，2004年11月第二版
%
% Smith圆图
plot([0 0],[-1.1 +1.1],'r'),            % 画坐标轴系
hold on,xlabel('u') 
plot([-1.1 +1.1],[0 0],'r'),ylabel('v'),
set(gcf,'color','w')                    % 置图形背景色为白色
axis equal,
axis([-1.1,1.1,-1.1,1.1]), grid
tr = 2*pi*(0:.01:1);			        % 指定你所要画的圆的圆周角分度数组
for r = [0,.2,.5,1,2,5]   	            % 指定你所要画的r=常数的曲线
   rr = 1/(r+1);   cr = 1-rr;
   plot(cr+rr*cos(tr),rr*sin(tr))	    % 画等r圆
end
for x = [.2,.5,1,2,5]                   % 指定你所要画的x=常数的曲线
   rx = 1/x;   cx = rx;
   tx = 2*atan(x)*(0:.01:1);
   plot(1-rx*sin(tx),cx-rx*cos(tx)) 	% 画等x圆,x>0
   plot(1-rx*sin(tx),-cx+rx*cos(tx)) 	% 画等x圆,x<0
end
