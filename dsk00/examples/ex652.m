%《MATLAB及其在理工课程中的应用指南》第六章例6－5－2程序
% 亥姆藿茨线圈的磁场验算
% 西安电子科技大学出版社出版  陈怀琛编著 1999年10月初版，2004年11月第二版
%
clear all; % 清工作空间及变量 (即环半径,电流,图形 )初始化
mu0 = 4*pi*1e-7;            % 真空导磁率 (T*m/A)
I0 = 5.0;  Rh=1;            % 环中电流(A)及环半径,在本题中可任设,不影响结果
C0 = mu0/(4*pi) * I0;       % 归并常数
%c=input('输入测量点的x坐标c*Rh,(c在0.3~0.6之间选,磁场分布最匀) ');
NGx =21 ;NGy = 21;		    % 设定观测点网格数
x=linspace(-Rh,Rh, NGx);y=linspace(-Rh,Rh, NGy);	% 设定观测点范围及数组
Nh = 20;		            % 电流环分段数
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
        rz = -zc;                               % 观测点在z=0平面上	 
        r3 = sqrt(rx.^2 + ry.^2 + rz.^2).^3;	% 计算r^3
        dlXr_x = dly.*rz - dlz.*ry; 	        % 计算叉乘积dl X r的 x 和 y 分量 
        dlXr_y = dlz.*rx - dlx.*rz;	 
        Bx(i,j) = sum(C0*dlXr_x./r3); 	        % 把磁场各段的x 和 y 分量累加
        By(i,j) = sum(C0*dlXr_y./r3);
    end
end
Bax=Bx(:,11:21)+Bx(:,1:11);		% 把x<0区域内的磁场平移叠加到x>0的区域以模仿
Bay=By(:,11:21)+By(:,1:11);		% 右边再加一个线圈所增加的磁场
subplot(1,2,1),
set(gcf,'color','w')                            % 置图形背景色为白色
mesh(x(11:21),y,Bax);xlabel('x');ylabel('y');	% 画出其Bx分布三维图
subplot(1,2,2),
plot(y,Bax),grid,xlabel('y');ylabel('Bx');