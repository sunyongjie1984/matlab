%��MATLAB���������γ��е�Ӧ��ָ�ϡ��ڶ��µڶ�����ʾ����
% �������ӿƼ���ѧ���������  �»�衱��� 1999��10�³��棬2004��11�µڶ���
%
echo off
pause,disp('������ÿһ��Ԫ��ȡͬ������ʾ��ʽ')
pause,disp('������Ԫ�ض��ܴ���Сʱ���Զ�ȡ��10���ݴι����ӡ�')
pause,disp('������Ԫ��������ܴ�ʱ��С������ʾΪ0.0000��')
echo on
pause,f=[0.000073 5.33e-6]
pause,X=[-1 0 1] 
pause,Y=X-1 
pause,l=length(X) 
pause,pi*X 
pause,X*Y' 
pause,Y'*X
echo off
pause,disp('�����������ҳ˲����')
echo on
pause,a=[1,2,3;3,-5,4;7,8,9],b=[2;0;2] 
pause,A=[1,2,3;4,5,6],B=[2,4,0;1,3,5],D=[1,4,7;8,5,2,;3,6,0] 
pause,A'*B 
pause,A*B' 
pause,D\A' 
pause,A/D 
pause,A = [6,3,4; -2,5,7; 8,-4,-3]; B = [3;-4;-7];x = A\B 
pause,A1 = [6,3,4;-2,5,7;8,-4,-3;1,5,-7];B1 = [3;-4;-7;9]; x1 = A1\B1 
echo off
pause,disp('������Ϊ������ݴκͺ���')
echo on
pause,s = [1  2; 3  4 ], D =[ 1  4  7; 8  5  2; 3  6  0]                                
pause,s1=s*s,s2=s.*s
pause,u1=sqrtm(s) 
pause,u2=sqrt(s) 
pause,v1=expm(s) 
pause,v2=exp(s) 
pause,logm(D) 
pause,log(D) 
echo off
pause,disp('�������еı任')
echo on
pause,A = [ 8   1   6   0; 3   5   7   1;4   9   2   2] 
pause,B=fliplr(A) 
pause,B=flipud(A) 
pause,B=reshape(A,2,6) 
pause,B=rot90(A) 
pause,B=diag(A) 
pause,B=tril(A) 
pause,B=triu(A) 
pause,B=A(:)' 
echo off
