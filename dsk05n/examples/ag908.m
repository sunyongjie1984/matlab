%�����Դ���ʵ�����MATLAB���š��ھ����������ag908
% ��ͬ����ֵ�Ķ���������
% ���ӹ�ҵ���������  �»�� ��������� 2005��10��
%
clear
subplot(2,2,1)
ezmesh('3*y1^2+7*y2^2')
grid on
subplot(2,2,2)
ezmesh('3*y1^2-7*y2^2')
grid on
axis([-5,5,-5,5,-400,200])
subplot(2,2,3)
ezmesh('-3*y1^2-7*y2^2')
grid on
subplot(2,2,4)
ezmesh('3*y1^2')
grid on
