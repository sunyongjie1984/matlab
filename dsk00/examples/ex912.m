%《MATLAB及其在理工课程中的应用指南》第九章例9－1－2程序
% 冲击函数和卷积
% 西安电子科技大学出版社出版  陈怀琛编著 1999年10月初版，2004年11月第二版
%
a=[1,3,6]; b=2; c=3; dt=0.1; tf =5;
clf, t=0:dt:tf;  
[r,p] = residue( b, a);					    % 用极点留数法求冲击函数
h = r(1)*exp(p(1)*t)+r(2)*exp(p(2)*t);	    % 冲击函数h(t)
subplot(2,1,1),plot(t,h);grid
set(gcf,'color','w')                        % 置图形背景色为白色
u=c*t; x=conv(u,h)*dt;						% 求u和h的卷积
subplot(2,1,2),
plot(t,x(1:length(t)));grid
