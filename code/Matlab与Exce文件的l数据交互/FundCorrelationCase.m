%compute FundCorrelation
%code by ariszheng@gmail.com
%2012-4-24
%�ļ���Ϣ
[typ, desc, fmt] = xlsfinfo('funddata.xls')
%��ȡ����
[data,textdate]= xlsread('funddata.xls');
%��������� 
R = corrcoef(data)
%д�뵽excel����
[status, message] = xlswrite ('funddata.xls', R, 'sheet2', 'B2:E5')
%��������������
textdate=textdate(2,2:5)
[status, message] = xlswrite ('funddata.xls', textdate, 'sheet2', 'B1:E1')
[status, message] = xlswrite ('funddata.xls', textdate', 'sheet2', 'A2:A5')