%《MATLAB及其在理工课程中的应用指南》第九章例9－2－2程序
% 由差分方程递推求输出
% 西安电子科技大学出版社出版  陈怀琛编著 1999年10月初版，2004年11月第二版
%
clear
a = input('差分方程左端的系数向量a=[a(1),...a(na)]=(书上取 [1,-1,0.9] ) ');
b = input('差分方程右端的系数向量b=[b(1),...b(na)]=(书上取 [2,3] ) ');
u = input('输入信号序列u=(书上取 cos(0.5*[1:59]) ) ');
na=length(a);nb=length(b);nu=length(u);
s=['起算点前',int2str(na-1),'点ym的值 =[ym(1),..,ym(na-1)]=(书上取 [0,0] )'];
ym=zeros(1,na+nu);ym(1:na-1) = input(s);    % 建立ym序列并赋予初值
um = [zeros(1,na-1),u];					    % 建立um序列并赋予初值
for n=na:na+nu-1							% 这个n以ym的起点为准
   ys = ym(n-1:-1:n-na+1); us = um(n:-1:n-nb+1);	% 生成us及ys
   ym(n) = (b*us'-a(2:na)*ys')/a(1);		% 差分方程递推求ym
end
% 把ym时间坐标右移na-1位,求出y
y = ym(na:na+nu-1);                         % 给出起点和终点的y数组
stem(y),grid
line([0,60],[0,0])		                    % 画横坐标轴
set(gcf,'color','w')                        % 置图形背景色为白色
 