%�����Դ���ʵ�����MATLAB���š��������������ag501
% ��ezplot��ͬһͼ�л���������
% ���ӹ�ҵ���������  �»�� ��������� 2005��10��
%
s1='x1+0.2*x2^3+1'	    % ����1
s2='3*x1+2*x2+3' 		% ����2
ezplot(s1),hold on		% ������1,����
ezplot(s2),grid on		% ������2,������
[x1,x2]=solve(s1,s2)	% ����������1,2