%�����Դ���ʵ�����MATLAB���š������µھŽ���ʾ����ag26
% �������㣨��ʽ�Ƶ���������
% ���ӹ�ҵ���������  �»�� ��������� 2005��10��
%
echo on
disp('�÷��Ź������ʾ���Ƶ���ͨ��ʽ')
syms x y t a u v w q,pause
r = x^2 + y^2,pause
theta = atan(y/x) ,pause
e = exp(i*pi*t) ,pause
f = cos(x)^2 + sin(x)^2,pause
f = simple(f) ,pause
x=solve('a*x^2 + b*x + c = 0') ,pause
[x,y]=solve('sin(x+y)-exp(x)*y = 0',  'x^2-y = 2') ,pause
disp('�÷����Ƶ����Դ�����ʽ')
syms x y a b c d e f,pause
A=[a,b;c,d],pause
det(A),trace(A),pause
V=inv(A),pause
s1='a*x+b*y=e',pause
s2='c*x+d*y=f',pause
[x,y]=solve(s1,s2)
disp('�÷��Ź�����ı���㾫��')
digits(28),pause
pi,pause
vpa(pi,100)