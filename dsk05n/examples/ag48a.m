%�����Դ���ʵ�����MATLAB���š�������4.8.1��ʾ����ag48a
% �ṹ���и�ֵ��ʾ����
% ���ӹ�ҵ���������  �»�� ��������� 2005��10��
%
disp('�ó���ֵ���������ṹ'),pause,echo on
student.name='John';
student.birthday='1985.06.15';
student.score=[85,78,92,68];
student,pause
disp('��struct���������ṹ'),pause
student(2)=struct('name','Alice','birthday','1986.01.20','score',...
[77,81,65,91]);pause
disp('��ȡ�ṹ�������ݵķ���'),pause
for i=1:2   disp(student(i)), end
pause,student.score
