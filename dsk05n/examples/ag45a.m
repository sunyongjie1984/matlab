%�����Դ���ʵ�����MATLAB���š������µ������ʾ����ag45
% �ַ���������
% ���ӹ�ҵ���������  �»�� ��������� 2005��10��

clear, echo on
s='abyzABYZ0189',pause
size(s),pause
disp('��ʾ�ַ�����ASCII��')
abs(s),pause
setstr(abs(s)),pause
disp('���ַ�����ASCII����16���Ʊ�ʾ')
dec2hex(abs(s)),pause
disp('�������ַ�������')
s1=[' welcome ',s],pause
disp('���ַ�����ʾ�ķ��̻�ֱ��'),pause
figure(1)
ezplot('3*x-2*y+2'),hold on,pause
ezplot('-x+2*y-2'),pause
disp('���ַ�����ʾ�ķ��̻���ά����'),pause
figure(2)
ezmesh('3*x-2*y+2'),hold on,pause
ezsurf('-x+2*y-2'),pause
echo off