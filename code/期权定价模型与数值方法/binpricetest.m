%����ʲ��۸�
Price=100;
%ִ�м۸�
Strike=95; 
%�޷��������ʣ��껯��
Rate=0.1;%10%
%ʣ��ʱ��
Time=6/12;%;
%������Ȩ 
flag=1;
%ÿ�׶μ��1����
Increment=1/12;
%������ 
Volatility=0.5;
[AssetPrice, OptionValue] = binprice(Price, Strike, Rate, Time, Increment, Volatility, flag)