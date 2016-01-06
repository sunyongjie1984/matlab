%《MATLAB及其在理工课程中的应用指南》第二章第六节演示程序
% 西安电子科技大学出版社出版  陈怀琛编著 1999年10月初版，2004年11月第二版
%
% 求fibonacci数的程序和求素数的程序
%
disp('求fibonacci数的程序'),pause
R=input('输入数的最大范围R= ') % 给出范围
f=[1 1];
while f(i)+f(i+1)<R  
    f(i+2)=f(i)+f(i+1);
    i=i+1;
end
f,plot(f)