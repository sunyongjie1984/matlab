%�����Դ���ʵ�����MATLAB���š�������4.9��ʾ����ag491
% ������ѧ���÷�����
% ���ӹ�ҵ���������  �»�� ��������� 2005��10��
%
echo on
syms x y t a u v w q,pause
r = x^2 + y^2,pause
theta = atan(y/x) ,pause
e = exp(i*pi*t) ,pause
f = cos(x)^2 + sin(x)^2,pause
f = simple(f) ,pause
diff(x^3) ,pause
int(x^3) ,pause
int(exp(-t^2)) ,pause
[int(x^a), int(a^x), int(x^a,a),    int(a^x,a)] ,pause
x=solve('a*x^2 + b*x + c = 0') ,pause
[u,v] = solve('a*u^2 + v^2 = 0', 'u - v = 1') ,pause
digits(28) ,pause
[x,y]=solve('sin(x+y)-exp(x)*y = 0',  'x^2-y = 2') ,pause
y = dsolve('Dy = -a*y') ,pause
y=dsolve('Dy = -a*y','y(0) = 1') ,pause
% ����������ʼ(�߽�)����,pause
y= dsolve('D2y = -a^2*y',  'y(0) = 1', ' Dy(pi/a) = 0') ,pause
y = dsolve('(Dy)^2 + y^2 = 1','y(0) = 0') ,pause	
f=exp(-a*t)*cos(w*t) ,pause
F=laplace(f) ,pause
pretty(F) ,pause
%�������������ƹ�ʽ�ɶ���
