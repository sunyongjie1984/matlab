%����ʲ��۸�
Price=100;
%ִ�м۸�
Strike=95; 
%�޷��������ʣ��껯��
Rate=0.1;%10%
%ʣ��ʱ��
Time=1;%;
%������Ȩ�м�10Ԫ 
Value=15;
%������Ȩ 
Volatility = blsimpv(Price, Strike, Rate, Time, Value)