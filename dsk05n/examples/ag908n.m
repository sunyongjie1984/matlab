%�����Դ���ʵ����MATLAB���š��ڶ���ھ����������ag908n
% ��ͬ����ϵ�Ķ���������
% ���ӹ�ҵ���������  �»�� ��������� 2005��10�³��棬2008��10�µڶ���
%
clear,
subplot(2,2,1)
ezplot('5*x1^2-4*x1*x2+5*x2^2=48')
axis equal,grid on
subplot(2,2,3)
ezplot('3*y1^2+7*y2^2=48')
axis equal,grid on
subplot(2,2,2)
ezplot('x1^2-8*x1*x2-5*x2^2=16')
axis equal,grid on
subplot(2,2,4)
ezplot('-7*y1^2+3*y2^2=48')
axis equal,grid on
set(gcf,'color','w')
