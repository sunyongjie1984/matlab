%�����Դ���ʵ�����MATLAB���š��������������ag651a
% Ƿ���������н����Զ����
% ���ӹ�ҵ���������  �»�� ��������� 2005��10��
%
syms c1 c2 c3 c4 c5 
[m,n]=size(A);
is=other(ip,n);				
c=[c1;c2;c3;c4;c5];
x(is,1) =c(1:length(is))
lp=length(ip)
x(ip,1)=-U0(1:lp,ip'+1:n)*x(ip'+1:n)+U0(1:lp,end)
