%ծȯ�ļ۸�(���룩������
Price=[98.04;100.05;101.3;95.6;103.6];
%��������������
CouponRate=[0.05;0.06;0.062;4.50;6.30];
%������Ϊ2012-5-29
Settle='2012-5-29';
%������Ϊ
Maturity=['2025-1-1';'2018-7-1';'2014-7-1';'2016-7-1';'2020-9-1'];
%��Ϣ����Ϊһ������
Period=2;
%��Ϣ��ʽΪ��ʵ��ֵ��ʵ��ֵ��
Basis=0;
%����bnddurp����
[~, YearDuration, ~] = bnddurp(Price,...
CouponRate, Settle, Maturity, Period, Basis);
%����bndconvp����
[YearConvexity, ~] = bndconvp(Price,...
CouponRate, Settle, Maturity, Period, Basis)
%��ʾ���
[YearDuration,YearConvexity];
%%�������Թ滮��� 
%Ŀ�꺯�����͹����С,ϵ��Ϊÿ��ծȯ��͹��
%YearConvexityΪ������������ʾת��Ϊ������
f=YearConvexity';
%�Ż�ģ��û�����Բ���ʽԼ��
A=[];
b=[];
%�Ż�ģ�͵�ʽԼ��������Ϊ4��ϵ����Ϊ1
%Aeq��ʽԼ��ϵ��ΪYearDurationΪ������������ʾת��Ϊ������
%Aeq*x=beq
Aeq=[YearDuration';ones(1,5)];
beq=[4;1];
%�������½�
lb=[0,0,0,0,0];
ub=[1,1,1,1,1];
%����������ʼ����
x0=[0;0;0;0;0];
%����linprog������Թ滮 
x = linprog(f,A,b,Aeq,beq,lb,ub,x0)