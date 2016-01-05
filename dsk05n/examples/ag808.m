%《线性代数实验践及MATLAB入门》第八章例题程序ag808
% 超定方程最小二乘解的几何意义
% 电子工业出版社出版  陈怀琛 龚杰民合著 2005年10月
%
v1=[1;1; 2]; 
v2=[1;-1;2];
b=[1;3;3];
viewsubspaces(b,2*v1,2*v2),hold on
xhat=[1;1]
z=(xhat(1)*v1+xhat(2)*v2)
plot3(z(1),z(2),z(3),'og')
line([b(1);z(1)],[b(2);z(2)],[b(3);z(3)])
axis([0 5 -2 3 0 5]),grid on
hold off
set(gcf,'color','w')