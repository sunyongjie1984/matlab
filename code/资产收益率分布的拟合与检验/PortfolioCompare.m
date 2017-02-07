%�������ݲ����㻦��300������ 
load TestData
%��ָ���۸�ת��Ϊ������
figure;    % �½�ͼ�δ���
%2007��ıȽ�ͼ
idx2007=find(year(Date)==2007)
Hs300Rate1=price2ret(Hs300(idx2007));
BSZTRate1=price2ret(BSZT(idx2007));
subplot(2,1,1)
% ����300�������о���ֲ�����ͼ
F1 = cdfplot(Hs300Rate1);
% �����߿�Ϊ2����ɫΪ��ɫ
set(F1,'LineWidth',2,'Color','r')
hold on
% ��ʱ�����������о���ֲ�����ͼ
F2 = cdfplot(BSZTRate1);
% ��������Ϊ�㻮�ߣ��߿�Ϊ2����ɫΪ��ɫ
set(F2,'LineStyle','-.','LineWidth',2,'Color','k')
% Ϊͼ�μӱ�ע�򣬱�ע���λ��������ϵ�����Ͻ�
legend('����300','��ʱ����',...
          'Location','NorthWest')
title('2007��')
%%
idx2008=find(year(Date)==2008)
Hs300Rate2=price2ret(Hs300(idx2008));
BSZTRate2=price2ret(BSZT(idx2008));
subplot(2,1,2)
% ����300�������о���ֲ�����ͼ
F1 = cdfplot(Hs300Rate2);
% �����߿�Ϊ2����ɫΪ��ɫ
set(F1,'LineWidth',2,'Color','r')
hold on
% ��ʱ�����������о���ֲ�����ͼ
F2 = cdfplot(BSZTRate2);
% ��������Ϊ�㻮�ߣ��߿�Ϊ2����ɫΪ��ɫ
set(F2,'LineStyle','-.','LineWidth',2,'Color','k')
% Ϊͼ�μӱ�ע�򣬱�ע���λ��������ϵ�����Ͻ�
legend('����300','��ʱ����',...
          'Location','NorthWest')
title('2008��')