%《MATLAB及其在理工课程中的应用指南》第五章例5－1－1程序b
% 单变量函数的计算和绘图(用调用子程序的方法)
% 西安电子科技大学出版社出版  陈怀琛编著 1999年10月初版，2004年11月第二版
%
dt=0.01; t=[0:dt:1.5]; w= 4*sqrt(3); 
y=ex511bf(t,w); Dy=diff(y)/dt;
subplot(2,1,1),plot(t,y), grid		% 绘制曲线并加上坐标网格
title('绘图示例'),xlabel('时间 t'),ylabel('y(t)')  % 加标注
% 求导数并绘制导数曲线,注意数组求导数后其长度减少一
subplot(2,1,2),plot(t(1:length(t)-1),Dy), grid
ylabel('Dy(t)')  % 加标注
set(gcf,'color','w')                                % 置图形背景色为白色
