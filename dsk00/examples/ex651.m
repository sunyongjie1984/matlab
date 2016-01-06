%《MATLAB及其在理工课程中的应用指南》第六章例6－5－1程序
% 由毕奥－萨瓦定律计算磁场
% 西安电子科技大学出版社出版  陈怀琛编著 1999年10月初版，2004年11月第二版
%
clear all;                          % 清工作空间及变量初始化
mu0 = 4*pi*1e-7;                    % 真空导磁率 (T*m/A)
I0 = 5.0;                           % 环中电流(A)
Rh = input('输入环半径Rh(m):(书上取2) ');
C0 = mu0/(4*pi) * I0;               % 归并常数
xMax = 3; yMax = 3;                 % 规定图的范围
NGx = 21; NGy = 21;          		% 规定观测点网格线数
x=linspace(-xMax, xMax, NGx);		% 确定观测点的x,y坐标数组
y=linspace(-yMax, yMax, NGy);
Nh = 20;		                    % 电流环分段数 
% 计算每段的端点,环在x=0平面上,其坐标x1,x2均为零
theta0 = linspace(0,2*pi, Nh+1);	% 环的圆周角分段
theta1 = theta0(1:Nh);
y1 = Rh*cos(theta1);		% 环各段向量的起点坐标y1,z1
z1 = Rh*sin(theta1);
theta2 = theta0(2:Nh+1);
y2 = Rh*cos(theta2);		% 环各段向量的终点坐标y2,z2
z2 = Rh*sin(theta2);  
dlx = 0;   		            % 计算环各段向量dl的三个分量
dly = y2-y1;
dlz = z2-z1;  
xc = 0; 	  	            % 计算环各段向量中点的三个坐标分量
yc = (y2+y1)/2;
zc = (z2+z1)/2;
% 循环计算各网格点上的B(x,y) 值
for i=1:NGy
    for j=1:NGx 
        % 对yz平面内的电流环分段作元素群运算,先算环上某段与观测点之间的向量r
        rx = x(j) - xc;
        ry = y(i) - yc;
        rz = -zc;                           % 观测点在z=0平面上	 
        r3 = sqrt(rx.^2 + ry.^2 + rz.^2).^3;	 	 % 计算r^3
        dlXr_x = dly.*rz - dlz.*ry; 	    % 计算叉乘积dl X r的 x 和 y 分量 
        dlXr_y = dlz.*rx - dlx.*rz;	 
        Bx(i,j) = sum(C0*dlXr_x./r3); 	    % 把磁场各段的x 和 y 分量累加
        By(i,j) = sum(C0*dlXr_y./r3);
    end
end
clf;   quiver(x,y,Bx,By);    	            %  用quiver 画磁场向量图
set(gcf,'color','w')                        % 置图形背景色为白色
hold on;						
plot(0,Rh,'bo');plot(0,-Rh,'rx');  	        % 在图上画出电流环
xlabel('x');  ylabel('y');
hold off;
