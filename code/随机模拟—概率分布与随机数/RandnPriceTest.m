%RandnPriceTest
Price0=10;
%����Ԥ����������Ϊ10%
%ÿ��250�������գ�Ԥ����������Ϊmu
mu=1.1^(1/250)-1;
%����Ԥ���겨����Ϊ30%
%ÿ��250�������գ�Ԥ���ղ�����Ϊsigma
sigma=.30/sqrt(250)
%Ϊ��2������۸�
N=250*2;
Price=RandnPrice(Price0,mu,sigma,N)

plot(Price(:,1))
xlabel('time')
ylabel('price')