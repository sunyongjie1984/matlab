%��MATLAB���������γ��е�Ӧ��ָ�ϡ���������6��2��2����
% x,y�������˶��ϳɺ���Ƕ���,������ͼ��
% �������ӿƼ���ѧ���������  �»�衱��� 1999��10�³��棬2004��11�µڶ���
%
clear all;     
fprintf('���� x(t) �ķ���; ����, t.*cos(t) \n');
x = input(': ','s');                        % �����ַ���
fprintf('���� y(t) �ķ���; ����, t.*sin(t) \n'); 
y = input(': ','s');
fprintf('��������ʱ��; \n');
tf = input(' tf= ');
Ns=100;t=linspace(0,tf,Ns);dt=tf/(Ns-1);    % ��Ns����,���ʱ������dt
xPlot=eval(x);yPlot=eval(y);
% �������x(t), y(t)�Ľ��Ƶ����ͽǶ�����ע�⵼�����г��ȱ�ԭ������һ��
p_x = diff(xPlot)/dt;                       % p_x = M dx/dt 
p_y = diff(yPlot)/dt;                       % p_y = M dy/dt 
LPlot = xPlot(1:Ns-1).* p_y - yPlot(1:Ns-1).* p_x;
% LPlot = cross([p_x,p_y],[xPlot1:Ns-1),yPlot1:Ns-1)]);	% �ò�˺���crossʱ�����
% �����켣���Ƕ�����ʱ��仯������
clf; figure(gcf);                           % ��ͼ�δ�������ǰ��
set(gcf,'color','w')                        % ��ͼ�α���ɫΪ��ɫ
subplot(1,2,1),  plot(xPlot,yPlot);
xlabel('x'); ylabel('y');
axis('equal');grid                          % ʹ���������ͬ
subplot(1,2,2),  plot(t(1:Ns-1),LPlot);
xlabel('t'); ylabel('�Ƕ���');grid
pause,axis('normal');                       % �ָ���ϵ�Զ��궨

