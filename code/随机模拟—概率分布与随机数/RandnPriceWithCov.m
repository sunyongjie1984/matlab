function Price=RandnPriceWithCov(Price0,mu,sigma,N)
%���������ʷ�����̬�ֲ��Ҿ���һ������Ե�����۸�����
%code by ariszheng  2012-5-7
R = chol(sigma);
%���ɾ�ֵ����Ϊmu,sigma����̬�ֲ������������
%��������м����һ�������
Rate=repmat(mu,N,1)+randn(N,2)*R;
mu-mean(Rate)
sigma-cov(Rate)
%ʹ��cumprod���������۳�
Num=length(mu);
Price=zeros(N,Num);
for i=1:Num
    Price(:,i)=Price0(i).*cumprod(Rate(:,i)+1);
end