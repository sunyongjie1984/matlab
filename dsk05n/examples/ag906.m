%《线性代数实验践及MATLAB入门》第九章例题程序ag906
% 不同坐标系的二次型曲线
% 电子工业出版社出版  陈怀琛 龚杰民合著 2005年10月
%
clear,
subplot(2,2,1)
ezplot('5*x1^2-4*x1*x2+5*x2^2=48')
axis equal,grid on
subplot(2,2,3)
ezplot('3*y1^2+7*y2^2=48')
axis equal,grid on
subplot(2,2,2)
ezplot('x1^2-8*x1*x2-5*x2^2=16')
axis equal,grid on
subplot(2,2,4)
ezplot('-7*y1^2+3*y2^2=48')
axis equal,grid on
set(gcf,'color','w')
