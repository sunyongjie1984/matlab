%�����Դ���ʵ�����MATLAB���š������µ������ʾ����ag45
% �ַ���������
% ���ӹ�ҵ���������  �»�� ��������� 2005��10��

clear, echo on
s='abyzABYZ0189',pause
size(s),pause
abs(s),pause
setstr(abs(s)),pause
dec2hex(abs(s)),pause
s1=[' welcome ',s],pause
s2 =['a=5    ' ; 'b=2    '  ; 'c=a+b*b'],pause
for k=1:3 eval(s2(k,:)), end,pause
st = input(' s=���ʽ ','s'); eval(st),pause
%disp('pi= ',pi),pause
%for i=1:10 fname='mydata'; eval(['load ',fname,int2str(i)]), end
st=sprintf(' Բ����pi= %8.5f',pi),pause
disp(st),pause
x = 0:10:90; y = [x; sin(x*pi/180)];,pause
disp(sprintf('%10.2f  %12.8f\n',y))
echo off