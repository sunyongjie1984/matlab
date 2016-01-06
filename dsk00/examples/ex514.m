%《MATLAB及其在理工课程中的应用指南》第五章例5－1－4程序
% 曲线族的绘制
% 西安电子科技大学出版社出版  陈怀琛编著 1999年10月初版，2004年11月第二版
%
x=-2:0.1:2;						% 给定x数组,确定范围及取点密度
subplot(1,2,1)					% 分两个画面绘图
for c=-3:3 plot(x,x.^3+c*x),hold on, end, grid		% 取不同的c
axis('equal'), axis([-2 2 -3 3])		% x,y坐标等比例并确定其范围
subplot(1,2,2),
for a=-3:3 plot(x,a*x.^3+x),hold on, end, grid		% 取不同的a
axis('equal'), axis([-2 2 -3 3])
set(gcf,'color','w')                                % 置图形背景色为白色
gtext('a=-3'), gtext('a=0'), gtext('a=3')		    % 标注字符
gtext('c=-3'), gtext('c=0'), gtext('c=3')
gtext('x'), gtext('y')
