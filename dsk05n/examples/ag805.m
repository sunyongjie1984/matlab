%《线性代数实验践及MATLAB入门》第八章例题程序ag805
% 正交基向量的生成
% 电子工业出版社出版  陈怀琛 龚杰民合著 2005年10月
%
V=[7,-4,9;-4,5,4;-2,-1,4;9,-7,-7]
[Q,R]=qr(V),
e=Q(:,[1:3])
e'*e