%《线性代数实验践及MATLAB入门》第九章例题程序ag901a
% 两维线性变换的几何形象
% 电子工业出版社出版  陈怀琛 龚杰民合著 2005年10月
%
x=[0,1,1,0;0,0,1,1;1,1,1,1];
subplot(2,3,1),
fill([x(1,:),0],[x(2,:),0],'r')
axis equal,axis([-1.5,1.5,-1,2]),grid on
title('(a) x=[0,1,1,0;0,0,1,1]')
A1=[-1,0;0,1]
B1=[A1,[1;0];[0,0],1];y1=B1*x
subplot(2,3,2),
fill([y1(1,:),0],[y1(2,:),0],'g')
axis equal,axis([-1.5,1.5,-1,2]),grid on
title('(b)B1=[-1,0;0,1]')
B2=[A1,[0;0];[1,1],0.5];y2=B2*x
subplot(2,3,3),
fill([y2(1,:),0],[y2(2,:),0],'g')
set(gcf,'color','w')
axis equal,axis([-1.5,1.5,-1,2]),grid on
title('(b)B1=[-1,0;0,1]')
B3=[A1,[1;1];[0,0],1];y3=B3*x
subplot(2,3,4),
fill([y3(1,:),0],[y3(2,:),0],'g')
set(gcf,'color','w')
axis equal,axis([-1.5,1.5,-1,2]),grid on
title('(b)B1=[-1,0;0,1]')
B4=[A1,[1;0];[0,0],2];y4=B4*x
subplot(2,3,5),
fill([y4(1,:),0],[y4(2,:),0],'g')
set(gcf,'color','w')
axis equal,axis([-1.5,1.5,-1,2]),grid on
title('(b)B1=[-1,0;0,1]')
B5=[A1,[0;1];[0,0],2];y5=B5*x
subplot(2,3,6),
fill([y5(1,:),0],[y5(2,:),0],'g')
set(gcf,'color','w')
axis equal,axis([-1.5,1.5,-1,2]),grid on
