%��MATLAB���������γ��е�Ӧ��ָ�ϡ������µ������ʾ����
% �������ӿƼ���ѧ���������  �»�衱��� 1999��10�³��棬2004��11�µڶ���
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
st = input(' s=���ʽ','s'); eval(st)
%for i=1:10 fname='mydata'; eval(['load ',fname,int2str(i)]), end
st=sprintf(' Բ����pi= %8.5f',pi);disp(st)
x = 0:10:90; y = [x; sin(x*pi/180)];disp(sprintf('%10.2f  %12.8f\n',y))
echo off