%《线性代数实验践及MATLAB入门》第六章例题程序ag604
% 行阶梯形式变换的大分解动作
% 电子工业出版社出版  陈怀琛 龚杰民合著 2005年10月
%
clear, echo on
A=[1,4,7;8,5,2;3,6,-2];B=[1;3;5];
C=[A,B]
% 向行阶梯形式变换
C1=gauss(C,1,2,1),pause
C1=gauss(C1,1,3,1),pause
C1=gauss(C1,2,3,2),pause
% 向精简行阶梯形式变换
C1=gauss(C1,3,2,3),pause
C1=gauss(C1,3,1,3),pause
C1=gauss(C1,2,1,2),pause
C1(2,:)=-1/27* C1(2,:); C1(3,:)=-1/11* C1(3,:)
