%《线性代数实验践及MATLAB入门》第六章例题程序ag651a
% 欠定方程用行阶梯自动求解
% 电子工业出版社出版  陈怀琛 龚杰民合著 2005年10月
%
syms c1 c2 c3 c4 c5 
[m,n]=size(A);
is=other(ip,n);				
c=[c1;c2;c3;c4;c5];
x(is,1) =c(1:length(is))
lp=length(ip)
x(ip,1)=-U0(1:lp,ip'+1:n)*x(ip'+1:n)+U0(1:lp,end)
