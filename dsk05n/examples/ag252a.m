%《线性代数实验践及MATLAB入门》第二章第五节演示程序二ag251
% 三维绘图和屏幕控制
% 电子工业出版社出版  陈怀琛 龚杰民合著 2005年10月

clear, close all
disp('绘制三维曲线'),echo on
pause, z=0:0.1:4*pi;x=cos(z);y=sin(z);plot3(x,y,z),grid on
pause,disp('绘制三维空间中的封闭曲线')
figure(2)
pause,Gw=[-4,-3,0;4,-3,0;0,7,0;-4,-3,0]' 	    % 主翼的顶点坐标
pause,Gt=[0,-3,0;0,-3,3;0,2,0;0,-3,0]'		% 尾翼的顶点坐标
G=[Gw,Gt]		 		 				% 整个飞行器外形的数据集
pause,plot3(Gw(1,:),Gw(2,:),Gw(3,:),'r'),hold on,grid on
pause,plot3(Gt(1,:),Gt(2,:),Gt(3,:),'g'),
axis equal
pause,disp('三维空间中的曲面'),echo on
disp('先在xy平面上设定自变量网格'),echo on
figure(3)
pause, x=-8:0.5:8;y=x';X=ones(size(y))*x;Y=y*ones(size(x));
pause,subplot(1,2,1),plot(X,Y),
pause,subplot(1,2,2),plot(Y,X),
pause,disp('设要画的平面方程为z1=3x-2y及z2=-x+2y'),echo on
figure(4)
pause,Z1=3*X-2*Y;mesh(Z1);hold on
pause,Z2=-X+2*Y;mesh(Z2),
pause,disp('设要画的平面方程为z1=3x-2y及z2=-x+y'),echo on
figure(5)
pause,Z1=3*X-2*Y;mesh(X,Y,Z1);hold on
pause,Z2=-X+Y;mesh(X,Y,Z2),
