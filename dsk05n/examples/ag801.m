%�����Դ���ʵ�����MATLAB���š��ڰ����������ag801
% ƽ���������Ļ���
% ���ӹ�ҵ���������  �»�� ��������� 2005��10��
%
u=[2;4]; v=[3;-1];
plot([2,3],[4,-1],'x');hold on
drawvec(u);hold on			% drawvec��ATLAST�е��ӳ���
drawvec(v,'g');hold off
grid on
set(gcf,'color','w')