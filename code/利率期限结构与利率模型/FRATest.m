%Step1
%%
%���ݵ�һ��Ϊʱ�䣬2-5��Ϊ��ͬ���ڵ��������޽ṹ
Data=[0.2500    1.1900    1.1700    1.1900    1.2000
    0.5000    1.6200    1.5700    1.5300    1.5000
    2.0000    2.3800    2.1900    2.1000    1.7700
    3.0000    2.2900    2.1300    2.0400    1.6400
    5.0000    3.0900    2.9500    2.8900    2.6000
   10.0000    3.8200    3.7300    3.7300    3.5000
   30.0000    4.5400    4.4900    4.5200    4.3000];
%ʱ��
Year=Data(:,1);
%���ʽṹ
bonds=Data(:,[2 3 4 5]) 
%������Ӧ���������޽ṹͼ�����ò�ͬ�����ͱ�ʾ
figure %���ɿհ׻���
plot(Year,bonds(:,1),'k+--');  
hold on;%��һ��ҳ���ϻ���ͼ��
plot(Year,bonds(:,2),'k*--');
plot(Year,bonds(:,3),'kx--');
plot(Year,bonds(:,4),'ko--');
%X,Y������
xlabel('time')
ylabel('yield')
legend('Today','Day ago','Week ago','Month ago')
%Step2��
%%
%����Զ��ʱ��㣬��ֵ��ʽ��Ϊ�ַ���ʽ
%ע����������ǰ����0����ʡ�ԣ���'07-23-2008'����д��'7-23-2008'���ַ�����һ��
%�ֱ�Ϊ3���º�6���º�һ��󡭡�
curvedates=datenum(['07-23-2008';'10-24-2008';'04-23-2010';'04-23-2011';'04-23-2013';'04-23-2018';'04-23-2028']);
%����zero2fwd�����ֱ��������Ӧ��FRAֵ
fwdone=zero2fwd(bonds(:,1),curvedates, '4-23-2008');
fwdtwo=zero2fwd(bonds(:,2),curvedates, '4-23-2008');
fwdthree=zero2fwd(bonds(:,3),curvedates, '4-23-2008');
fwdfour=zero2fwd(bonds(:,4),curvedates, '4-23-2008');
%������Ӧ���������޽ṹͼ�����ò�ͬ�����ͱ�ʾ
figure %���ɿհ׻���
plot(curvedates,fwdone,'k+--');hold on;
plot(curvedates,fwdtwo,'k*--');
plot(curvedates,fwdthree,'kx--');
plot(curvedates,fwdfour,'ko--');
%x��Ϊʱ������
dateaxis('x');
%X,Y������
xlabel('time')
ylabel('yield')
%���
legend('Today','Day ago','Week ago','Month ago')