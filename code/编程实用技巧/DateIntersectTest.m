%��ȡ����300����
load Hs300
Date=Hs300.Date;
IndexPrice=Hs300.Price;
%��������ѡȡ
%AIndex�����������ݴ���2005������
%year(Date)�������ݵ����
AIndex=find(year(Date)>2005);
%AIndex������������С��2008������
BIndex=find(year(Date)<2008);
%���� 2006-2007
CIndex=intersect(AIndex,BIndex);
%���ݱ�ʶɸѡ��2006-2007������
Date2006_2007=Date(CIndex);
Price2006_2007=IndexPrice(CIndex);
subplot(3,1,1)
plot(Date2006_2007,Price2006_2007)
subplot(3,1,2)
xlabel('date')
plot(Date2006_2007,Price2006_2007)
%��������ʱ�仯
dateaxis('x', 6)
xlabel('date')
subplot(3,1,3)
plot(Date2006_2007,Price2006_2007)
%��������ʱ�仯
dateaxis('x', 10)
xlabel('date')

