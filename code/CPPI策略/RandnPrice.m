function Price=RandnPrice(Price0,mu,sigma,N)
%code by ariszheng.com 
%2012-5-7
%���ɾ�ֵ����Ϊmu,sigma����̬�ֲ������������
Rate=normrnd(mu,sigma,N,1);
%ʹ��cumprod���������۳�
Price=Price0*cumprod(Rate+1);
