%����ʲ��۸�
Price=100;
%ִ�м۸�
Strike=95; 
%�޷��������ʣ��껯��
Rate=0.1;%10%
%ʣ��ʱ��
Time=3/12;%=0.25;
%�껯������
Volatility=0.5;
[CallDelta, PutDelta] = blsprice(Price, Strike, Rate, Time, Volatility) 
