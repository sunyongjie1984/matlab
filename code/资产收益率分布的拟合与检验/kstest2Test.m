%�������ݲ����㻦��300������ 
load TestData
%����2007�껦��300ָ��������������
%�������Ϊ2007������
Idx2007=find(year(Date)==2007);
IndexPrice2007=Hs300(Idx2007);
%���۸�����ת��Ϊ����������
IndexRate2007=price2ret(IndexPrice2007);
%����2008�껦��300ָ��������������
%�������Ϊ2008������
Idx2008=find(year(Date)==2008);
IndexPrice2008=Hs300(Idx2008);
%���۸�����ת��Ϊ����������
IndexRate2008=price2ret(IndexPrice2008);
% ����kstest2����������������ܳɼ��Ƿ������ͬ�ķֲ�
[h,p,ks2stat] = kstest2(IndexRate2007,IndexRate2008)

figure;    % �½�ͼ�δ���
% ����2007���������о���ֲ�����ͼ
F1 = cdfplot(IndexRate2007);
% �����߿�Ϊ2����ɫΪ��ɫ
set(F1,'LineWidth',2,'Color','r')
hold on
% ����2008���������о���ֲ�����ͼ
F2 = cdfplot(IndexRate2008);
% ��������Ϊ�㻮�ߣ��߿�Ϊ2����ɫΪ��ɫ
set(F2,'LineStyle','-.','LineWidth',2,'Color','k')
% Ϊͼ�μӱ�ע�򣬱�ע���λ��������ϵ�����Ͻ�
legend('2007��','2008��',...
          'Location','NorthWest')
