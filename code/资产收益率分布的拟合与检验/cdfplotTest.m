%�������ݲ����㻦��300������ 
load TestData
Hs300Rate=price2ret(Hs300);
figure;    % �½�ͼ�δ���
% ���ƾ���ֲ�����ͼ��������ͼ�ξ��h�ͽṹ�����stats��
% �ṹ�����stats��5���ֶΣ��ֱ��Ӧ��Сֵ�����ֵ��ƽ��ֵ����λ���ͱ�׼��
[h,stats] = cdfplot(Hs300Rate)
% ����������ɫΪ��ɫ���߿�Ϊ2
set(h,'color','k','LineWidth',2);  
% ����һ���µĺ���������x  
x = -0.1:0.001:0.1;    
% �����ֵΪstats.mean����׼��Ϊstats.std����̬�ֲ�������x���ķֲ�����ֵ
y = normcdf(x,stats.mean,stats.std);
hold on
% ������̬�ֲ��ķֲ��������ߣ�����������ΪƷ��ɫ���ߣ��߿�Ϊ2
plot(x,y,':m','LineWidth',2);
% ��ӱ�ע�򣬲����ñ�ע���λ����ͼ�δ��ڵ����Ͻ�
legend('����ֲ�����','������̬�ֲ�','Location','NorthWest');
