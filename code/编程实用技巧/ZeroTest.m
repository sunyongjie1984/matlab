%��ʼ���벻��ʼ���ĳ���Ч�� 
%����tic toc��ʱ
%δ��ʼ������ʱ��
clear
N=1000000;
tic
for i=1:N
    X(i)=i;
end
toc
clear 
%��ʼ������ʱ��
N=1e7;
tic
X=zeros(N,1);
for i=1:N
    X(i)=i;
end
toc

