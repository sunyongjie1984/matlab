%��MATLAB���������γ��е�Ӧ��ָ�ϡ��ڶ��µ�������ʾ����
% �������ӿƼ���ѧ���������  �»�衱��� 1999��10�³��棬2004��11�µڶ���
%
% ��fibonacci���ĳ�����������ĳ���
echo off
disp('��fibonacci���ĳ���'),pause
echo on
R=input('����fibonacci�������ΧR= '),f=[1 1]; i=1;
while f(i)+f(i+1)<R f(i+2)=f(i)+f(i+1);i=i+1;
end
f,plot(f)

% �������ĳ���
echo off
disp('������(prime number)�ĳ���'),pause
echo on
N=input('�������������ΧN= '), x=2:N;
for u=2:sqrt(N)
   n=find(rem(x,u)==0 & x~=u);
   x(n)=[];
end,x

pause,x=rand(4,4), 
pause,mean(x)
%�ӳ����ǲ���ֱ��ִ�е�,���������������,���������ӳ���ֻ���Ķ�,����ִ��
%function y = humps(x)
%HUMPS	A function used by QUADDEMO, ZERODEMO and FPLOTDEMO.
%	HUMPS(X) is a function with strong maxima near x = .3 and x = .9.
%	See QUADDEMO, ZERODEMO and FPLOTDEMO.
%	Copyright (c) 1984-94 by The MathWorks, Inc.

%y = 1 ./ ((x-.3).^2 + .01) + 1 ./ ((x-.9).^2 + .04) - 6;
