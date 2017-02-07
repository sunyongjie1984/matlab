%����ʲ��۸�
Price=60:1:100;
%ִ�м۸�
Strike=95; 
%�޷��������ʣ��껯��
Rate=0.1;%10%
%ʣ��ʱ��
Time=(1:1:12)/12;
%�껯������
Volatility=0.5;
[Price,Time]=meshgrid(Price,Time);
[Calldelta, Putdelta] = blsdelta(Price, Strike, Rate, Time, Volatility);
%mesh(Price, Time, Calldelta);
mesh(Price, Time, Putdelta);
xlabel('Stock Price ');
ylabel('Time (year)');
zlabel('Delta');

