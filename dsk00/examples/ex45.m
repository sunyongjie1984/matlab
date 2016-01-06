%《MATLAB及其在理工课程中的应用指南》第四章第五节演示程序
% 西安电子科技大学出版社出版  陈怀琛编著 1999年10月初版，2004年11月第二版
%
echo on
s='abyzABYZ0189'
size(s)
abs(s)
setstr(abs(s))
dec2hex(abs(s))
s1=[' welcome ',s]
s2 =['a=5    ' ; 'b=2    '  ; 'c=a+b*b']
for k=1:3 eval(s2(k,:)), end
st = input(' s=表达式','s'); eval(st)
%for i=1:10 fname='mydata'; eval(['load ',fname,int2str(i)]), end
st=sprintf(' 圆周率pi= %8.5f',pi);disp(st)
x = 0:10:90; y = [x; sin(x*pi/180)];disp(sprintf('%10.2f  %12.8f\n',y))
echo off