%�����Դ���ʵ�����MATLAB���š��ڰ����������ag852
% �������̽��ʵ��
% ���ӹ�ҵ���������  �»�� ��������� 2005��10��
%
clear,
datax = [1:5]';
datay=[ 0.2339, 0.3812, 0.5759, 0.8153, 0.9742 ]';		% ԭʼ����
A = [datax , ones(5,1)]; B = datay; c = A\B, r=1/c(1)	% �������
plot(datax,datay,'o'),hold on	% ���ԭʼ���ݵ�ͼ
xi=0:0.1:5; 
yi=c(1)*xi+c(2);  	% ����51��ȡֵ��
A1 = datax,  
c0 = A1 \ B,		% ͨ��ԭ����������
plot(xi,yi,xi,c0*xi,':')		% ��ͼ
grid on
hold off
set(gcf,'color','w')