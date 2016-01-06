%《MATLAB及其在理工课程中的应用指南》第六章例6－4－3程序
% 电位分布及电场计算
% 西安电子科技大学出版社出版  陈怀琛编著 1999年10月初版，2004年11月第二版
%
fprintf('输入电位分布方程 V(x,y) \n');
fprintf('例如:  log(x.^2 + y.^2) \n');
V = input(': ','s');                        % 读入字符串 V(x,y)
NGrid = 20;                                 % 绘图的网格线数
xMax = 5;                                   % 绘图区从 x= -xMax 到 x= xMax
xPlot = linspace( -xMax, xMax, NGrid);      % 绘图取的x值
[x,y]=meshgrid(xPlot);
VPlot=eval(V);
[ExPlot, EyPlot] = gradient(-VPlot);		% 电场是电位的负梯度
clf; subplot(1,2,1),meshc(VPlot);           % 画含等高线的三维曲面
set(gcf,'color','w')                        % 置图形背景色为白色
xlabel('x');  ylabel('y'); zlabel('电位');
% 规定等高线图的范围及比例
subplot(1,2,2), axis([-xMax xMax -yMax yMax]);    % 建立第二子图
cs = contour(x,y,VPlot);                    % 画等高线
clabel(cs); hold on;                        % 在等高线图上加上编号
%@ 在等高线图上加上电场方向
quiver(x,y,ExPlot,EyPlot);                  % 画电场 E 的箭头图
xlabel('x');  ylabel('y');hold off;
