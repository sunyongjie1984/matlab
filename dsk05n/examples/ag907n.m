%�����Դ���ʵ����MATLAB���š��ڶ���ھ����������ag907n
% ��MATLAB��������
% ���ӹ�ҵ���������  �»�� ��������� 2005��10�³��棬2008��10�µڶ���
%
A=[1,-1,2;0,2,1;0,0,-1];
B=2*A^3+A-5*eye(3);C=inv(A)+eye(3) 
fa=poly(A),ra=roots(fa)
fb=poly(B),rb=roots(fb)
fc=poly(C),rc=roots(fc)
