%maxdrawdowntest.m
%��������
load funddata
%funddata����������
%'��ʱ����'
TRate=funddata(:,2)/funddata(1,2)-1;
[MaxDD, MaxDDIndex] = maxdrawdown(TRate,'arithmetic')
%�������س�������λ��
plot(TRate)
hold on
plot(MaxDDIndex,TRate(MaxDDIndex),'r-o','MarkerSize',10)
%��ʾ������o�Ĵ�С