%��MATLAB���������γ��е�Ӧ��ָ�ϡ���������7��2��4����
% ����Ӧ��״̬�ķ�����Ħ��Բ
% �������ӿƼ���ѧ���������  �»�衱��� 1999��10�³��棬2004��11�µڶ���
%
Sx=input('��x(Mpa) =(����ȡ20)  '); % �������������Ӧ���ͼ�Ӧ��,S=��,T=��
Sy=input('��y(Mpa) =(����ȡ0)  '); 
Txy=input('��xy(Mpa) =(����ȡ5)  ');
a=linspace(0,pi,37);		        % ��Ӧ��Բ�ϵ�Բ�ܽǷ�Ϊ36��
Sa=(Sx+Sy)/2; Sd=(Sx-Sy)/2;
sigma=Sa+Sd*cos(2*a)-Txy*sin(2*a);	% Ӧ��Բ����
tau = Sd*sin(2*a)+Txy*cos(2*a);
plot(sigma,tau,Sx,Txy,'*'),		    % ��ͼ�������׼�㣬
set(gcf,'color','w')                % ��ͼ�α���ɫΪ��ɫ
axis equal, v=axis;		            % ʹx��y��ȡ�ȱ���,��������ı߽�v
line([v(1),v(2)],[0,0]),	        % ����x,y����,
line([0,0],[v(3),v(4)])						
hold, plot(Sa,0,'x')				% ���Ӧ��Բ��Բ��
Smax=max(sigma),Smin=min(sigma),Tmax=max(tau)
% ������������б����a���ϦҼ��ӵĳ����
h=input('������Ӧ��,����0.����Ӧ��,����1   ');
while h~=0;
   a=input('����б���淽���a= [����](����ȡpi/3��-pi/5) ')
   sigma=Sa+Sd*cos(2*a)-Txy*sin(2*a)
tau=Sd*sin(2*a)+Txy*cos(2*a)
plot(sigma,tau,'or')				% ���������Ӧ��״̬��
h=input('����������Ӧ��,����0.����Ҫ��Ӧ��,����1');
end,hold off

