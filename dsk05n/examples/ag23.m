%�����Դ���ʵ�����MATLAB���š��ڶ��µ�������ʾ����ag23
% Ԫ��Ⱥ����
% ���ӹ�ҵ���������  �»�� ��������� 2005��10��

format compact,echo on
t=0:0.02:1
format
pause,z=10:-3:-5
pause,k=1:6
pause,theta=linspace(0,2*pi,9)
pause,w=logspace(0,1,11)
pause,X=[1,2,3],Y=[4,5,6]
pause,Z=X.*Y
pause,Z=X.\Y
pause,Z=X.^Y
pause,Z=X.^2
pause,2 .^[X Y]
pause,D=[1,4,7;8,5,2,;3,6,0]
pause,Z=D^3,D.^3
pause,Z=3.^D
pause,help elfun
pause,x=[0:0.05:pi/4]';[x,sin(x),cos(x),tan(x)]
pause,disp('       x      sin(x)    cos(x)    tan(x) ');disp([x,sin(x),cos(x),tan(x)])
pause,echo off

