%��MATLAB���������γ��е�Ӧ��ָ�ϡ���������7��1��4����a
% �������˶��ķ�������:��˲ʱ�˶�
% �������ӿƼ���ѧ���������  �»�衱��� 1999��10�³��棬2004��11�µڶ���
%
global L0 L1 L2 L3 th1 
L0=20;L1=8;L2=25; L3=20;                                % ������߼������˵ĳ���L1,L2,L3
theta1=input('��ǰ��theta1=(����ȡ0)   ');
w1=input('��1���ٶ�w1=(����ȡ100)  ');
theta3=input('��Ӧ��theta1��theta3����ֵ=(����ȡ1)  ');
th1=theta1;theta3=fzero('ex714f',theta3);		        % ���ʼ���theta3
theta2 = asin(( L3*sin(theta3)- L1*sin(theta1))/L2);    % �������ǹ�ϵ
w3 = L1*w1*cos(pi/2-theta1+theta2)/ (L3*cos(theta3-pi/2-theta2))
