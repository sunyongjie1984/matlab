%�����Դ���ʵ�����MATLAB���š������µ�������ʾ����ag46
% �ṹ���к͵�Ԫ���и�ֵ
% ���ӹ�ҵ���������  �»�� ��������� 2005��10��

clear, echo on
disp('�ṹ���и�ֵ'),pause
student.name='John',pause
student.birthday='1985.06.15',pause
student.score=[85,78,92,68],pause
student,pause
student(2)=struct('name','Alice','birthday','1986.01.20','score',[77,81,65,91]),pause
student,pause
student.score,pause
student(1),pause
student(:),pause
disp('��Ԫ���и�ֵ'),pause
name2={'John';'Alice'},pause
birthday2={'1985.06.15';'1986.01.20'},pause
score2={[85,78,92,68];[77,81,65,91]},pause
student2={name2,birthday2,score2},pause
student2{1}{2},pause
student2{3}{2},pause
student2{3}{2}(2:3),pause
student2{1},pause
student2{2},pause
echo off