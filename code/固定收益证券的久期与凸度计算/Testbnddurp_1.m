%��֧ծȯ�ļ۸�(���룩������
Price=[104.8106;99.9951;95.4384];
%�������ʶ�Ϊ5%
CouponRate=0.05;
%������Ϊ1997-1-20
Settle='20-Jan-1997';
%������Ϊ2002-6-15
Maturity='15-Jun-2002';
%��Ϣ����Ϊһ������
Period=2;
%��Ϣ��ʽΪ��ʵ��ֵ��ʵ��ֵ��
Basis=0;
%����bnddurp����
[ModDuration, YearDuration, PerDuration] = bnddurp(Price,...
CouponRate, Settle, Maturity, Period, Basis)