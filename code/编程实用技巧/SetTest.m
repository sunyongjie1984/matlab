%���Ϻ�������ʾ�� 
A=[1 2 3 4 5 6];
B=[4 5 6 7 8 9];
%����
C=intersect(A,B)
%����
C =union (A,B)
%Ԫ��ʶ��
b=4;
C = ismember(A,b)  
%���ظ�Ԫ��
C = unique([A,B])