function X=RandSumOne(M,N,method)
%����N����Ϊ1���������ÿ�����������0
%code by ariszheng 2012-5-7
if method==1
    X=zeros(M,N);
    for i=1:M
        %���ɾ��ȷֲ��������
        X(i,:)=rand(1,N);
        %��������Ժͣ�ʹ���Ϊ1
        X(i,:)=X(i,:)/sum(X(i,:));
    end
elseif  method==2
      X=zeros(M,N);
    for i=1:M
        %������̬�ֲ��������
        X(i,:)=abs(randn(1,N));
        %��������Ժͣ�ʹ���Ϊ1
        X(i,:)=X(i,:)/sum(X(i,:));
    end
else
    error('please Input method')
end
