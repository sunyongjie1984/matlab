%��֧ծȯ�ĵ��������� 
Yield=[0.04;0.05;0.06];
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
[ModDuration, YearDuration, PerDuration] = bnddurp(Yield,...
CouponRate, Settle, Maturity, Period, Basis)