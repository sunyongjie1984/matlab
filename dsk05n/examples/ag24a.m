%�����Դ���ʵ�����MATLAB���š��ڶ��µ��Ľ���ʾ����ag24
% �߼����㼰���̿���
% ���ӹ�ҵ���������  �»�� ��������� 2005��10��

clear, format,echo off
disp('  <   С�� '),disp(' ')
disp('  <=   С�ڵ��� '),disp(' ')
disp('  >   ���� '),disp(' ')
disp('  >=   ���ڵ��� '),disp(' ')
disp('  ==   ���� '),disp(' ')
disp('  ~=   ������ '),disp(' ')
pause,echo on
pause, 2+2==4
pause, A=magic(6)
pause, p=(rem(A,3)==0),
pause,echo off
disp('  &     ��'),disp(' ')
disp('  |     ��'),disp(' ')
disp('  ~     ��'),disp(' ')
pause,disp('  �������')
pause, x=1;while x~=inf,x1=x;x=2*x;end,x1
pause, y=1;while y~=0,y1=y;y=y/2;end,y1
pause, format long, y1, format short
pause,realmax,eps
pause,disp('  ����Ծ���eps')
pause, y=1;while 1+y>1,y1=y;y=y/2;end,y1
pause, format long, y1, format short
pause, y=1;while y*eps~=0,y3=y;y=y/2;end,y3
pause, format long, y3, format short
pause,disp('  �ж���ż��')
pause,n=input('n='),if n<0 A='negative', elseif rem(n,2)==0 A='even', else A='odd', end,A
pause,n=input('n=');switch mod(n,2),case 1,A='��',case 0,A='ż',otherwise,A='��', end 
