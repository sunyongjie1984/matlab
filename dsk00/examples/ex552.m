%《MATLAB及其在理工课程中的应用指南》第五章例5－5－2程序
% 矩阵的条件数与解的精度
% 西安电子科技大学出版社出版  陈怀琛编著 1999年10月初版，2004年11月第二版
%
H4 = hilb(4),  r = rank(H4),  c = cond(H4)
x=ones(4,1); b4 = H4*x , 
format long, x1 = H4\b4,
e = max(abs(x1-x))
