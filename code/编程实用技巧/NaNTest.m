%��Y=sin(x)>0��ͼ��
%����XΪ0��10���Ϊ0.1������ 
X=0:0.1:10;
%����X�Ĵ�С����Y���г�ʼ�� 
N=length(X);
%ʹ��Zeros������ʼ��
Y=zeros(1,N);
%ʹ��NaN*Ones������ʼ��
YY=NaN*ones(1,N);
%ѭ������(Ϊ�������δʹ�þ���ʽ��
for i=1:N
    if sin(X(i))>0
        Y(i)=sin(X(i));
        YY(i)=sin(X(i));
    end
end
%��ͼ
subplot(2,1,1)
plot(X,Y,'*');
subplot(2,1,2);
plot(X,YY,'*');
