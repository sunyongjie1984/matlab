%Test zbtprice
%������
%��bond.xls�ļ���'Data'sheet�ж�ȡ
[~,Maturity,~] = xlsread('bond.xls','Data','E3:E27');
%Ʊ������
[Couponrate,~,~] = xlsread('bond.xls','Data','F3:F27');
%Ʊ������ת��ΪС��
Couponrate=Couponrate/100;
%ծȯ�۸�
[Price,~,~] = xlsread('bond.xls','Data','H3:H27');
%���ַ�����תΪ��ֵ��ʽ
Maturity=datenum(Maturity);
%����zbtyield����Bonds
bonds=[Maturity, Couponrate];
%ʹ��bndyield���ݼ۸���㵽�������� 
Yield=bndyield(Price,Couponrate,'2012-5-30',Maturity)
% plot(Maturity,Yield)
% dateaxis('x')
% %X������
% xlabel('time')
% %Y������ 
% ylabel('yield(%)')


%�Ƚϵ������������������������޽ṹ�Ƚ�
%����zbtyield���������������޽ṹ���򷽣�
[zerorates1 dates1]=zbtyield(bonds, Yield,'2012-5-30');	
plot(dates1, zerorates1*100,'--r');
hold on
plot(Maturity,Yield*100,'b');
dateaxis('x')
%X������
xlabel('time')
%Y������ 
ylabel('yield(%)')
%���ͱ�� 
legend('�������޽ṹ','����������')

%����ʣ���ڣ��껪��
Year=(Maturity-datenum('2012-5-30'))/365;
cftool(Year,Yield)

