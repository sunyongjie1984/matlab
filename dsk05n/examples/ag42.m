%�����Դ���ʵ�����MATLAB���š������µڶ�����ʾ����ag42
% ����任������
% ���ӹ�ҵ���������  �»�� ��������� 2005��10��

format
disp('ax=round(rand(4,4)*10)'), echo on
ax=round(rand(4,4)*10)
pause,a = [2 9 0 0; 0 4 1 4; 7 5 5 1; 7 8 7 4]
pause,det(a)
pause,rank(a)
% pause,eig(a)
pause,V=inv(a)
pause,V*a
pause,trace(a)
pause,[l,u]=lu(a)
pause,[q,r1]=qr(a)
% pause,[s,v,d]=svd(a)
% pause,cond(a)
% pause,[e,r]=eig(a)
pause,p=poly(a)
pause,roots(p)
echo off

