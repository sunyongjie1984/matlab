%DateClassByYear
%�������� 
%�ļ���Ϣ
[typ, desc, fmt] = xlsfinfo('funddata.xls');
%��ȡ����
[data,textdate,raw]= xlsread('funddata.xls');
%textdate��һ�е�4��491������Ϊʱ��
%datenum���ַ�ʱ��ת��Ϊ��ֵ��ʽ
Date=datenum(textdate(4:491,1))
%��ʾ����Date(1)
datestr(Date(1))
%���ݹ���
%2007������ year(Date)�������ڵ����
DateIndex2007=find(year(Date)==2007);
Date2007=Date(DateIndex2007);
length(Date2007)
%2008������ 
DateIndex2008=find(year(Date)==2008);
Date2008=Date(DateIndex2008);
length(Date2008)

