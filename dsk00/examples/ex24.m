%��MATLAB���������γ��е�Ӧ��ָ�ϡ��ڶ��µ��Ľ���ʾ����
% �������ӿƼ���ѧ���������  �»�衱��� 1999��10�³��棬2004��11�µڶ���
%
clear, format,echo off
disp('һ����ϵ���㣨���֣�'),disp(' ')
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
disp('�����߼�����'),disp(' ')
pause,disp('�����߼����㣨���֣�'),disp(' ')
disp('  &     ��'),disp(' ')
disp('  |     ��'),disp(' ')
disp('  ~     ��'),disp(' ')
pause,disp('�����߼����㣨���֣�'),disp(' ')
disp('   all    ȫΪ�� '),disp(' ')
disp('   any    ��ȫΪ�� '),disp(' ')
pause,echo on
u=p|~p
pause, all(p),all(u)
pause, v=p&(~p)
pause, any(p),any(v)
echo off,
disp('���̿��ƾ���'),disp(' ')
pause,disp('��while����������'),
echo on
pause, x=1;while x~=inf,x1=x;x=2*x;end,x1
echo off
pause,disp('��while�������С��'),
echo on
pause, y=1;while y~=0,y1=y;y=y/2;end,y1
pause, format long, y1, format short
pause,realmax,eps
echo off,
pause,disp('��while�������Ծ���eps'),
echo on
pause, y=1;while 1+y>1,y1=y;y=y/2;end,y1
pause, format long, y1, format short
echo off,
pause,disp('��forѭ�������hilbert����(����1��������forѭ��)'),
echo on
pause, n=input('n='),h=zeros(n,n);format rat,for i=1:n,for j=1:n,h(i,j)=1/(i+j-1);end,end,h
echo off,
pause,disp('��forѭ�������hilbert����(����2����Ԫ��Ⱥ�����һ��forѭ��)'),
echo on
pause, n=input('n='),format rat,for i=1:n,h1(i,:)=1./(i+[1:n]-1);end,h1,format short
echo off,
pause,disp('��if-elseif-end����ж���ż��'),
echo on
pause,n=input('n='),if n<0 A='negative', elseif rem(n,2)==0 A='even'; else A='odd'; end,A
echo off,
pause,disp('��switch-case����ж���ż��'),
echo on
pause,n=input('n=');switch mod(n,2),case 1,A='��',case 0,A='ż',otherwise,A='��', end 
