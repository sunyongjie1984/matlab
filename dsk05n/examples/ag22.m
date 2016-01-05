%《线性代数实验践及MATLAB入门》第二章第二节演示程序ag22
% 矩阵的四则运算
% 电子工业出版社出版  陈怀琛 龚杰民合著 2005年10月

echo on
pause,X=[-1 0 1] 
pause,Y=X-1 
pause,l=length(X) 
pause,pi*X 
pause,X*Y' 
pause,Y'*X 
pause,a=[1,2,3;3,-5,4;7,8,9],b=[2;0;2],x=a\b 
pause,A=[1,2,3;4,5,6],B=[2,4,0;1,3,5],D=[1,4,7;8,5,2,;3,6,0] 
pause,A'*B 
pause,A*B' 
pause,D\A' 
pause,A/D 
pause,A = [6,3,4; -2,5,7; 8,-4,-3]; B = [3;-4;-7];x = A\B 
pause,A1 = [6,3,4;-2,5,7;8,-4,-3;1,5,-7];B1 = [3;-4;-7;9]; x1 = A1\B1 
pause,s = [1  2; 3  4 ], D =[ 1  4  7; 8  5  2; 3  6  0]                                
pause,u1=sqrtm(s) 
pause,u2=sqrt(s) 
pause,v1=expm(s) 
pause,v2=exp(s) 
pause,logm(D) 
pause,log(D) 
pause,A = [ 8   1   6   0; 3   5   7   1;4   9   2   2] 
pause,B=fliplr(A) 
pause,B=flipud(A) 
pause,B=reshape(A,2,6) 
pause,B=rot90(A) 
pause,B=diag(A) 
pause,B=tril(A) 
pause,B=triu(A) 
pause,B=A(:)' 
echo off
