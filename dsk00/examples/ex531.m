%《MATLAB及其在理工课程中的应用指南》第五章例5－3－1程序
% 数列的表示方法
% 西安电子科技大学出版社出版  陈怀琛编著 1999年10月初版，2004年11月第二版
%
format compact
n=1:6;
echo on
n,
1./n,
(-1).^n./n,
1./n./(n+1),
for i=1:6 x(i)=1/prod(1:i); end,
x
echo off
format