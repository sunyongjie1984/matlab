%《MATLAB及其在理工课程中的应用指南》第五章例5－5－3程序
% 对称矩阵的特征方程和特征根
% 西安电子科技大学出版社出版  陈怀琛编著 1999年10月初版，2004年11月第二版
%
format compact
a = [ 2, 4, 9; 4, 2, 4; 9, 4, 18 ], % 给定对称矩阵
echo on
[v,d] = eig(a)
det(v),
det(a)
det(d),
trace(a),
trace(d), 
echo off
disp('验证特征向量和特征根的关系'),pause
echo on
(a-d(1,1)*eye(3))*v(:,1) 	% 检验下列各式是否为零
(a-d(2,2)*eye(3))*v(:,2)
(a-d(3,3)*eye(3))*v(:,3)
a*v-v*d
inv(v)*a*v-d
echo off
format