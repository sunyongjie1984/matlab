%��MATLAB���������γ��е�Ӧ��ָ�ϡ���������ʾ����
% ��������ʱ������ַ���
% �������ӿƼ���ѧ���������  �»�衱��� 1999��10�³��棬2004��11�µڶ���
%
A=rand(100,100);t0=clock;y=inv(A);etime(clock,t0)
A=rand(100,100);t=cputime;y=inv(A);cputime-t
A=rand(100,100);tic;y=inv(A);toc
