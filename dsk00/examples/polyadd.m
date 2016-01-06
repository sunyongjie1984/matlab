%《MATLAB及其在理工课程中的应用指南》第九章例9-3-2调用的子程序
% 西安电子科技大学出版社出版  陈怀琛编著 1999年10月初版，2004年11月第二版
%
% 多项式补零相加
function y=polyadd(x1,x2)
n1=length(x1); n2= length(x2);
if n1>n2 x2=[zeros(1,n1-n2),x2];
elseif n1<n2 x1=[zeros(1,n2-n1),x1];
end
y = x1+x2;
