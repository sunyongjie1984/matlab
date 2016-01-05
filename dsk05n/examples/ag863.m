%《线性代数实验与MATLAB》第六章例题程序ag863
% 信号流图模型
% 电子工业出版社出版  陈怀琛 龚杰民合著 2005年10月
%
clear
syms G1 G2 G3 G4 G5
Q=[0,0,-G4,0;G1,0,0,-G5;0,G2,0,0;0,0,G3,0],
P=[1;0;0;0]
W=inv(eye(4)-Q)*P
pretty(W(4))