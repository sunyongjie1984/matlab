%��ȡ���ݲ��洢����
filename='funddata.xls'
%numΪ��ֵ��ʽ�ľ�ֵ
%txtΪ�ַ���ʽ
[num,txt,raw] = xlsread(filename);
Date=datenum(txt(4:491,1));
%Hs300ָ��Ϊ��һ��
Hs300=num(:,1);
%��ʱ����Ϊ�ڶ���
BSZT=num(:,2);
%������300ָ������ʱ���⾻ֵ����Ȩ����
%�������ݴ洢��TestData��
save TestData Hs300 BSZT Date
%��ͼ
subplot(2,1,1)
plot(Date,Hs300,'k');
%��ʱ����� ��ֵ����ת��Ϊ ��/�� ��ʽ
dateaxis('x',2)
legend('����300')
subplot(2,1,2)
plot(Date,BSZT,'b--');
%��ʱ����� ��ֵ����ת��Ϊ ��/�� ��ʽ
dateaxis('x',2)
legend('��ʱ����')

%�������ݲ����㻦��300������ 
load TestData
figure %��ͼ
plot(Date,Hs300/Hs300(1),'k',Date,BSZT/BSZT(1),'b--');
%��ʱ����� ��ֵ����ת��Ϊ �� ��ʽ
dateaxis('x')
%���
legend('����300','��ʱ����')
xlabel('date')
ylabel('price')
