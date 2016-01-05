%《线性代数实验践及MATLAB入门》第九章例题程序ag908
% 不同特征值的二次型曲面
% 电子工业出版社出版  陈怀琛 龚杰民合著 2005年10月
%
clear
subplot(2,2,1)
ezmesh('3*y1^2+7*y2^2')
grid on
subplot(2,2,2)
ezmesh('3*y1^2-7*y2^2')
grid on
axis([-5,5,-5,5,-400,200])
subplot(2,2,3)
ezmesh('-3*y1^2-7*y2^2')
grid on
subplot(2,2,4)
ezmesh('3*y1^2')
grid on
