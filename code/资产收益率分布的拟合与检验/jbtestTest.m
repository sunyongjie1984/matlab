%�������ݲ����㻦��300������ 
load TestData
%��ָ���۸�ת��Ϊ������
Hs300Rate=price2ret(Hs300);
% ����jbtest��������Jarque-Bera����
[h,p,jbstat,critval] = jbtest(Hs300Rate)
