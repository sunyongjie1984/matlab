%���� 
load funddata
%������˳��Ϊ'Hs300','��ʱ����','��ʵ300','�Ϸ�����'
%����һ���հ�ͼ
figure;
%��һ��ҳ���ϻ�������ߣ�hold on
hold on
%funddata��:,1��/funddata(1,1)ʹ�������ߵ�������
%'-.'��'o'��'--'Ϊ����������ʽ
plot(funddata(:,1)/funddata(1,1),'k')
plot(funddata(:,2)/funddata(1,2),'r-.')
plot(funddata(:,3)/funddata(1,3),'bo')
plot(funddata(:,4)/funddata(1,4),'g--')
%X������Ϊʱ��
xlabel('time')
%Y������Ϊ�۸�
ylabel('price')
%�߱��
legend('����300','��ʱ����','��ʵ300','�Ϸ�����')
