%�����Դ���ʵ�����MATLAB���š���������ʾ����ag31
% ��������ʱ������ַ���
% ���ӹ�ҵ���������  �»�� ��������� 2005��10��

A=rand(500,500);t0=clock;y=inv(A);etime(clock,t0)
A=rand(500,500);t=cputime;y=inv(A);cputime-t
A=rand(500,500);tic;y=inv(A);toc
