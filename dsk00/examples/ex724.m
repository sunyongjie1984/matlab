%《MATLAB及其在理工课程中的应用指南》第七章例7－2－4程序
% 复杂应力状态的分析，摩尔圆
% 西安电子科技大学出版社出版  陈怀琛编著 1999年10月初版，2004年11月第二版
%
Sx=input('σx(Mpa) =(书上取20)  '); % 输入两方向的正应力和剪应力,S=σ,T=τ
Sy=input('σy(Mpa) =(书上取0)  '); 
Txy=input('τxy(Mpa) =(书上取5)  ');
a=linspace(0,pi,37);		        % 将应力圆上的圆周角分为36份
Sa=(Sx+Sy)/2; Sd=(Sx-Sy)/2;
sigma=Sa+Sd*cos(2*a)-Txy*sin(2*a);	% 应力圆方程
tau = Sd*sin(2*a)+Txy*cos(2*a);
plot(sigma,tau,Sx,Txy,'*'),		    % 绘图并绘出基准点，
set(gcf,'color','w')                % 置图形背景色为白色
axis equal, v=axis;		            % 使x和y轴取等比例,找坐标轴的边界v
line([v(1),v(2)],[0,0]),	        % 画出x,y坐标,
line([0,0],[v(3),v(4)])						
hold, plot(Sa,0,'x')				% 标出应力圆的圆心
Smax=max(sigma),Smin=min(sigma),Tmax=max(tau)
% 以下是求任意斜截面a角上σ及τ的程序段
h=input('若不求应力,键入0.若求应力,键入1   ');
while h~=0;
   a=input('给出斜截面方向角a= [弧度](书上取pi/3或-pi/5) ')
   sigma=Sa+Sd*cos(2*a)-Txy*sin(2*a)
tau=Sd*sin(2*a)+Txy*cos(2*a)
plot(sigma,tau,'or')				% 画出待求的应力状态点
h=input('若不继续求应力,键入0.若还要求应力,键入1');
end,hold off

