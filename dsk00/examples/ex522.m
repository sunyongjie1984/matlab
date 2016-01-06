%《MATLAB及其在理工课程中的应用指南》第五章例5－2－2程序
% 空间曲面的交线
% 西安电子科技大学出版社出版  陈怀琛编著 1999年10月初版，2004年11月第二版
%
% s1=input('输入方程1 ','s');		% z1方程
% s2=input('输入方程2 ','s');		% z2方程
% xmax=input('xmax=ymax= ');dx=input('dx=dy= ');
% [x,y]=meshgrid(-xmax:dx:xmax);
% z1 = eval(s1);
% z2 = eval(s2);
% 若要使输入函数有较大灵活性,将后面的三行换成前面的六行
[x,y]=meshgrid(-2:.1:2);        % 确定计算和绘图的定义域网格
z1=x.*x-2*y.*y;	                % 第一个曲面方程
z2=2*x-3*y;		                % 第二个曲面方程（平面）
mesh(x,y,z1);hold;mesh(x,y,z2);	% 分别画出两个曲面（保持坐标比例不变）
set(gcf,'color','w')            % 置图形背景色为白色
r0=abs(z1-z2)<=.1;	            % 求两曲面z坐标差小于0.1的网格矩阵
zz=r0.*z1;yy=r0.*y;xx=r0.*x; 	% 求这些网格上的坐标值,即交线坐标值
plot3(xx(r0~=0),yy(r0~=0),zz(r0~=0)','x');	% 画出这些点
colormap(gray),hold off