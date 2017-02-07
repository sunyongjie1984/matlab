%RandnPriceWithCovTest
Price0=[10,10];
%����Ԥ����������Ϊ10%��5%
%ÿ��250�������գ�Ԥ����������Ϊmu
mu=[1.1^(1/250)-1,1.05^(1/250)-1];
%�����ʵ�Э�������
%����Ԥ���겨����Ϊ30% 5%
%ÿ��250�������գ�Ԥ���ղ�����Ϊsigma
%���ϵ��Ϊ-0.05
Tcov=0.3*0.05*(-0.05);
sigma = [0.3^2 Tcov;Tcov  0.05^2]/250; 
%Ϊ��2������۸�
N=2*250;

Price=RandnPriceWithCov(Price0,mu,sigma,N);

plot(Price(:,1),'-.');
hold on
plot(Price(:,2),'-');
xlabel('time')
ylabel('price')
legend('Price1','Price2')