%��MATLAB���������γ��е�Ӧ��ָ�ϡ����ڶ��棩��������7��1��4����b
% �������˶��ķ�������:��ȫ���˶���������
% �������ӿƼ���ѧ���������  �»�衱��� 1999��10�³��棬2004��11�µڶ���
%
global L0 L1 L2 L3 th1 
L0=20;L1=8;L2=25; L3=20;            % ������߼������˵ĳ���L1,L2,L3
w1=100;	                            % input('��1���ٶ�w1= (����ȡ100) [1/��]');
theta1=linspace(0,2*pi,181);		% ��1ÿȦ��Ϊ180�ݣ����2�ȡ�
theta3=1;	                        % input('��Ӧ��theta1��Сֵ����theta3����ֵ= (����ȡ1) [����]');
dt = 2*pi/180/w1;					% ��1ת2�ȶ�Ӧ��ʱ������
th1=theta1(1);theta3(1)=fzero('ex714f',theta3);		% ���ʼ���theta3
for i=2:181
   th1=theta1(i);
   theta3(i)=fzero('ex714f',theta3(i-1));   % ����ex714f������������theta3
end
figure(1)
set(gcf,'color','w')                        % ��ͼ�α���ɫΪ��ɫ
subplot(1,2,1),plot(theta1,theta3);xlabel('theta1'),ylabel('theta3'),grid	%������
w3 = diff(theta3)/dt;		 	            % ���3�Ľ��ٶ�,ע�����������鳤��Сһ
subplot(1,2,2),plot(theta1(2:length(theta1)),w3);grid
pause,figure(2),subplot(1,1,1),axis equal   % �趨�ڶ���ͼ��ʹ�ݺ������ͬ
axis([0,50,-20,20]),axis off
x0=10;y0=0;                                 % ��֧������
x1=x0+L1*cos(theta1);y1=L1*sin(theta1);     % ��1�Ҷ˵�����
x2=x0+L0+L3*cos(theta3);y2=L3*sin(theta3);  % ��3��˵����꣬���˶��Ҷ˵�����
x3=x0+L0;y3=0;                              % ��3�Ҷ˵�����
line([5,45],[0,0])                          % ������׼��
h1=line([x0,x1(1),x2(1),x3(1)],[y0,y1(1),y2(1),y3],'Linewidth',3); % ���ĸ��˵�����
set(h1,'erasemode','xor');                  % �趨�������ݵ�ģʽ����ǰһ�����ݵ�ͼ�β���
set(gcf,'color','w')                        % ��ͼ�α���ɫΪ��ɫ
for i1=1:1000
   i=mod(i1,180)+1;                         % ��ǰ�������180�ȷ�Χ�ڵ�����ѭ��ȡֵ
	set(h1,'Xdata',[x0,x1(i),x2(i),x3],'Ydata',[y0,y1(i),y2(i),y3]) % ���¸˶�����
   fft(rand(2^14,1));                       % �ȴ�һ��ʱ�䣬���������ٶ�
   drawnow                                  % ��ʱ��ʾ
end
