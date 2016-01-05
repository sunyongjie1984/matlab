%《线性代数实验践及MATLAB入门》子程序
% 生成使第i,j两行交换的n阶初等矩阵
% 电子工业出版社出版  陈怀琛 龚杰民合著 2005年10月
%
function E=E1gen(n,i,j)
%
% function E=E1gen(n,i,j)
% -----------------------------
% 生成使第i,j两行交换的n阶初等矩阵
%
E=eye(n);
E(i,i)=0;E(j,j)=0;
E(i,j)=1;E(j,i)=1;
