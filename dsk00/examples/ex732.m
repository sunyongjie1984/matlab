%《MATLAB及其在理工课程中的应用指南》第七章例7－3－2程序
% 单自由度阻尼系统的强迫振动,卷积方法
% 西安电子科技大学出版社出版  陈怀琛编著 1999年10月初版，2004年11月第二版
%
m=1;c=4;K=100;dt=0.015;				% 输入给定的参数
w0=sqrt(K/m);		 				% 求系统固有频率
zeta=c/sqrt(m*K)/2;					% 求系统固有阻尼系数
a=[1,2*zeta*w0,w0^2];b=1; 			% 求分母分子系数
[r,p]=residue(b,a);					% 求极点、留数
t=0:dt:1.2;
h=r(1)*exp(p(1)*t)+r(2)*exp(p(2)*t);	% 求出系统的脉冲响应
f=[1:10,10*ones(1,70)];				% 给出外加力的采样值
x=conv(h,f)*dt;						% 把脉冲响应和外加力作卷积
plot(t(1:80),x(1:80))				% 绘图
set(gcf,'color','w')                % 置图形背景色为白色
v1=diff(x)/dt;						% 求导得出速度，注意求导后列长少一
[t(1:80)',f(1:80)',x(1:80)',[0,v1(1:79)]']  % 列出结果
