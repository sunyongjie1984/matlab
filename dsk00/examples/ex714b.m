%��MATLAB���������γ��е�Ӧ��ָ�ϡ���������7��1��4����b
% �������˶��ķ�������:��ȫ���˶�
% �������ӿƼ���ѧ���������  �»�衱��� 1999��10�³��棬2004��11�µڶ���
%
global L0 L1 L2 L3 th1 
L0=20;L1=8;L2=25; L3=20;% ������߼������˵ĳ���L1,L2,L3
w1=input('��1���ٶ�w1= (����ȡ100) [1/��]');
theta1=linspace(0,2*pi,181);		                %��1ÿȦ��Ϊ180�ݣ����2�ȡ�
theta3=input('��Ӧ��theta1��Сֵ����theta3����ֵ= (����ȡ1) [����]');
dt = 2*pi/180/w1;					                % ��1ת2�ȶ�Ӧ��ʱ������
th1=theta1(1);theta3(1)=fzero('ex714f',theta3);		%���ʼ���theta3
for i=2:181
   th1=theta1(i);
   theta3(i)=fzero('ex714f',theta3(i-1));           % ����ex714f������������theta3
end
subplot(1,2,1),plot(theta1,theta3);xlabel('theta1'),ylabel('theta3'),grid	% ������
set(gcf,'color','w')                                % ��ͼ�α���ɫΪ��ɫ
w3 = diff(theta3)/dt;		 	                    % ���3�Ľ��ٶ�,ע�����������鳤��Сһ
subplot(1,2,2),plot(theta1(2:length(theta1)),w3);grid
