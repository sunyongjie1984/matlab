Compounding = 1;%������Ϣ�淶 
ValuationDate = '01-01-2000';%��ֵ����
StartDate = ['01-01-2000'; '01-01-2001'; '01-01-2002'; '01-01-2003'...
    ; '01-01-2004'];%��ʼ����
EndDates = ['01-01-2001'; '01-01-2002'; '01-01-2003'; '01-01-2004'; ...
    '01-01-2005'];%��������
Rates = [.1; .11; .12; .125; .13];%Զ������˵��
Volatility = [.2; .19; .18; .17; .16];%������˵��
CurveTerm = [1; 2; 3; 4; 5]; %?��??????
%����hjmvolspec�������������ʽṹ˵��
HJMVolSpec = hjmvolspec('Stationary', Volatility , CurveTerm);
%�����������޽ṹ˵��
RateSpec = intenvset('Compounding', Compounding,...
           'ValuationDate', ValuationDate,...
           'StartDates', StartDate,...
           'EndDates', EndDates,...
           'Rates', Rates);
%����ʱ��ṹ˵��
HJMTimeSpec = hjmtimespec(ValuationDate, EndDates, Compounding);
%����HJMģ�Ͷ�����
HJMTree = hjmtree(HJMVolSpec, RateSpec, HJMTimeSpec);
treeviewer(HJMTree)
