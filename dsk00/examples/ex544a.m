%《MATLAB及其在理工课程中的应用指南》第五章例5－4－4中画积分区域的程序
% 西安电子科技大学出版社出版  陈怀琛编著 1999年10月初版，2004年11月第二版
%
%本程序给出由x=1,y=x,z=xy三个曲面以及z=0坐标平面围成的积分区域.
[x,y]=meshgrid(0:.05:1);% 确定计算和绘图的定义域网格
z1=x.*y;z2=zeros(size(z1));	% z=xy和z=0表面方程
mesh(x,y,z1);hold on;mesh(x,y,z2);	%分别画出两个表面
set(gcf,'color','w')                        % 置图形背景色为白色
x1=[0:0.02:1];y1=x1;sx1=length(x1);			% y=x平面,与z平行
zd=[zeros(1,sx1);x1.*y1];			% x=y平面上,与z平行的线族端点zd=xy
line([x1;x1],[y1;y1],zd);
plot3([x1;x1],[y1;y1],zd,'*')		% 画出此平行线族,端点画*
plot3(ones(2,sx1),[y1;y1],[zeros(1,sx1);y1],'o') %画出x=1平行线族端点o
xlabel('x'),ylabel('y'),zlabel('z'),hold off,pause
rotate3d
