%�������ݲ����㻦��300������ 
load TestData
%��ָ���۸�ת��Ϊ������
Hs300Rate=price2ret(Hs300);
% ����lillietest��������Lilliefors���飬�����ܳɼ������Ƿ������̬�ֲ�
[h,p,kstat,critval] = lillietest(Hs300Rate)

