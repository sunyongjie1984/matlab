%�������ݲ����㻦��300������ 
load TestData
%��ָ���۸�ת��Ϊ������
Hs300Rate=price2ret(Hs300);
figure;    % �½�ͼ�δ���
[f, xc] = ecdf(Hs300Rate);   % ����ecdf��������xc���ľ���ֲ�����ֵf
ecdfhist(f, xc, 20);    % ����Ƶ��ֱ��ͼ
xlabel('����300������');  % ΪX��ӱ�ǩ
ylabel('f(x)');  % ΪY��ӱ�ǩ
% ����һ���µĺ���������x
x = -0.1:0.001:0.1; 
% �����ֵΪstats.mean����׼��Ϊstats.std����̬�ֲ�������x�����ܶȺ���ֵ
y = normpdf(x,stats.mean,stats.std);
hold on
plot(x,y,'k','LineWidth',2) % ������̬�ֲ����ܶȺ������ߣ�����������Ϊ��ɫʵ�ߣ��߿�Ϊ2
% ��ӱ�ע�򣬲����ñ�ע���λ����ͼ�δ��ڵ����Ͻ�
legend('Ƶ��ֱ��ͼ','��̬�ֲ��ܶ�����','Location','NorthWest');
