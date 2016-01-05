%《线性代数实验践及MATLAB入门》第三章演示程序ag31
% 测试运行时间的三种方法
% 电子工业出版社出版  陈怀琛 龚杰民合著 2005年10月

A=rand(500,500);t0=clock;y=inv(A);etime(clock,t0)
A=rand(500,500);t=cputime;y=inv(A);cputime-t
A=rand(500,500);tic;y=inv(A);toc
