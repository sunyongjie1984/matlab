%《MATLAB及其在理工课程中的应用指南》第五章例5－1－1
% 程序ex511b调用的子程序
% 西安电子科技大学出版社出版  陈怀琛编著 1999年10月初版，2004年11月第二版
%
function xvalues=ex511bf(tvalues,w)
% 例5-1-1用的函数文件,它应该能用元素群运算。
xvalues=sqrt(3)/2*exp(-4*tvalues).*sin(w*tvalues + pi/3);
