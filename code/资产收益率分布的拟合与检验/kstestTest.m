%�������ݲ����㻦��300������ 
load TestData
%��ָ���۸�ת��Ϊ������
Hs300Rate=price2ret(Hs300);
%�����ֵ
m=mean(Hs300Rate);
%���㷽��
s=std(Hs300Rate);
% ����cdf��������ָ���ֲ�����ֵΪm����׼��Ϊs����̬�ֲ�
cdf = [Hs300Rate, normcdf(Hs300Rate, m, s)];
% ����kstest�����������ܳɼ��Ƿ������cdfָ���ķֲ�
[h,p,ksstat,cv] = kstest(Hs300Rate,cdf)
