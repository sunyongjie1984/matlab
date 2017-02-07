%����ʲ��۸�
Price=100;
%ִ�м۸�
Strike=95; 
%�޷��������ʣ��껯��
Rate=0.1;%10%
%ʣ��ʱ��
Time=3/12;%=0.25;
%�껯������
Volatility=0.1:0.01:0.5;
N=length(Volatility)
Call=zeros(1,N);
Put=zeros(1,N);
for i=1:N
    [Call(i), Put(i)] = blsprice(Price, Strike, Rate, Time, Volatility(i)); 
end
plot(Call,'b--');
hold on
plot(Put,'b');
xlabel('Volatility')
ylabel('price')
legend('Call','Put')