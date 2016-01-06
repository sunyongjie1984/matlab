%《MATLAB及其在理工课程中的应用指南》第二章第四节演示程序
% 西安电子科技大学出版社出版  陈怀琛编著 1999年10月初版，2004年11月第二版
%
clear, format,echo off
disp('一。关系运算（六种）'),disp(' ')
disp('  <   小于 '),disp(' ')
disp('  <=   小于等于 '),disp(' ')
disp('  >   大于 '),disp(' ')
disp('  >=   大于等于 '),disp(' ')
disp('  ==   等于 '),disp(' ')
disp('  ~=   不等于 '),disp(' ')
pause,echo on
pause, 2+2==4
pause, A=magic(6)
pause, p=(rem(A,3)==0),
pause,echo off
disp('二。逻辑运算'),disp(' ')
pause,disp('基本逻辑运算（三种）'),disp(' ')
disp('  &     与'),disp(' ')
disp('  |     或'),disp(' ')
disp('  ~     非'),disp(' ')
pause,disp('数组逻辑运算（两种）'),disp(' ')
disp('   all    全为真 '),disp(' ')
disp('   any    不全为假 '),disp(' ')
pause,echo on
u=p|~p
pause, all(p),all(u)
pause, v=p&(~p)
pause, any(p),any(v)
echo off,
disp('流程控制举例'),disp(' ')
pause,disp('用while语句求最大数'),
echo on
pause, x=1;while x~=inf,x1=x;x=2*x;end,x1
echo off
pause,disp('用while语句求最小数'),
echo on
pause, y=1;while y~=0,y1=y;y=y/2;end,y1
pause, format long, y1, format short
pause,realmax,eps
echo off,
pause,disp('用while语句求相对精度eps'),
echo on
pause, y=1;while 1+y>1,y1=y;y=y/2;end,y1
pause, format long, y1, format short
echo off,
pause,disp('用for循环语句求hilbert矩阵(方法1：用两重for循环)'),
echo on
pause, n=input('n='),h=zeros(n,n);format rat,for i=1:n,for j=1:n,h(i,j)=1/(i+j-1);end,end,h
echo off,
pause,disp('用for循环语句求hilbert矩阵(方法2：用元素群运算加一重for循环)'),
echo on
pause, n=input('n='),format rat,for i=1:n,h1(i,:)=1./(i+[1:n]-1);end,h1,format short
echo off,
pause,disp('用if-elseif-end语句判断奇偶数'),
echo on
pause,n=input('n='),if n<0 A='negative', elseif rem(n,2)==0 A='even'; else A='odd'; end,A
echo off,
pause,disp('用switch-case语句判断奇偶数'),
echo on
pause,n=input('n=');switch mod(n,2),case 1,A='奇',case 0,A='偶',otherwise,A='空', end 
