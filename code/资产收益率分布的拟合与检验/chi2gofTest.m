%�������ݲ����㻦��300������ 
load TestData
%��ָ���۸�ת��Ϊ������
Hs300Rate=price2ret(Hs300);
% ���п�������Ŷȼ���
[h,p,stats] = chi2gof(Hs300Rate)
