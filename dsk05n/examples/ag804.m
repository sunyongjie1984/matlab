%�����Դ���ʵ�����MATLAB���š��ڰ����������ag804
% ����������нǵļ���
% ���ӹ�ҵ���������  �»�� ��������� 2005��10��
%
v1=[7;-4;-2;9], v2=[-4;5;-1;-7]; % �������
v3=[9;4;4;-7], w=[-9;7;1;-4], 
v=[v1,v2,v3]					 % ��������������ɾ���
c=v\w						% ������������������ϵ�ϵ��
v10=v1/norm(v1), 
v20=v2/norm(v2), 
v30=v3/norm(v1),
theta12=acos((v1'*v2)/(norm(v1)*norm(v2)))
theta13=acos((v1'*v3)/(norm(v1)*norm(v3)))
theta23=acos((v3'*v2)/(norm(v3)*norm(v2)))