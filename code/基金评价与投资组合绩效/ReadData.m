
%2012-4-24
%�ļ���Ϣ
[typ, desc, fmt] = xlsfinfo('funddata.xls');
%��ȡ����
[data,textdate]= xlsread('funddata.xls');
funddata=data;
%�����ݱ�����Mat�ļ���
save funddata funddata 