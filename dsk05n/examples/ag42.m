%《线性代数实验践及MATLAB入门》第四章第二节演示程序ag42
% 矩阵变换函数库
% 电子工业出版社出版  陈怀琛 龚杰民合著 2005年10月

format
disp('ax=round(rand(4,4)*10)'), echo on
ax=round(rand(4,4)*10)
pause,a = [2 9 0 0; 0 4 1 4; 7 5 5 1; 7 8 7 4]
pause,det(a)
pause,rank(a)
% pause,eig(a)
pause,V=inv(a)
pause,V*a
pause,trace(a)
pause,[l,u]=lu(a)
pause,[q,r1]=qr(a)
% pause,[s,v,d]=svd(a)
% pause,cond(a)
% pause,[e,r]=eig(a)
pause,p=poly(a)
pause,roots(p)
echo off

