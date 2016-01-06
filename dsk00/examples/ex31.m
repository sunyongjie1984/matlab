%《MATLAB及其在理工课程中的应用指南》第三章演示程序
% 测试运行时间的三种方法
% 西安电子科技大学出版社出版  陈怀琛编著 1999年10月初版，2004年11月第二版
%
A=rand(100,100);t0=clock;y=inv(A);etime(clock,t0)
A=rand(100,100);t=cputime;y=inv(A);cputime-t
A=rand(100,100);tic;y=inv(A);toc
