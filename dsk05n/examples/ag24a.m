%《线性代数实验践及MATLAB入门》第二章第四节演示程序ag24
% 逻辑运算及流程控制
% 电子工业出版社出版  陈怀琛 龚杰民合著 2005年10月

clear, format,echo off
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
disp('  &     与'),disp(' ')
disp('  |     或'),disp(' ')
disp('  ~     非'),disp(' ')
pause,disp('  求最大数')
pause, x=1;while x~=inf,x1=x;x=2*x;end,x1
pause, y=1;while y~=0,y1=y;y=y/2;end,y1
pause, format long, y1, format short
pause,realmax,eps
pause,disp('  求相对精度eps')
pause, y=1;while 1+y>1,y1=y;y=y/2;end,y1
pause, format long, y1, format short
pause, y=1;while y*eps~=0,y3=y;y=y/2;end,y3
pause, format long, y3, format short
pause,disp('  判断奇偶数')
pause,n=input('n='),if n<0 A='negative', elseif rem(n,2)==0 A='even', else A='odd', end,A
pause,n=input('n=');switch mod(n,2),case 1,A='奇',case 0,A='偶',otherwise,A='空', end 
