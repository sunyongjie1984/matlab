%《MATLAB及其在理工课程中的应用指南》第五章例5－4－3程序
% 二重积分
% 西安电子科技大学出版社出版  陈怀琛编著 1999年10月初版，2004年11月第二版
%
clear,format compact
fill([0,1,1,0],[0,0,1,0],'y'),hold
fill([0.55,0.6,0.6,0.55,0.55],[0,0,0.6,0.55,0],'r')
set(gcf,'color','w')                                % 置图形背景色为白色
dx=0.01;dy=dx;
x=0:dx:1;lx=length(x);
for k=1:lx
   x1=(k-1)*dx;
   y1=0:dy:x1;
   f=x1.^2+y1.*2;
   s1(k)=trapz(f)*dy;
end
s=trapz(s1)*dx
