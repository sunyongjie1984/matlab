%��MATLAB���������γ��е�Ӧ��ָ�ϡ��ڰ�����8��3��2�����Ľ�����ex832a
% �����Ӧ�����ת�ų����γɣ�����ϵ�����²������ż���
% �������ӿƼ���ѧ���������  �»�衱��� 1999��10�³��棬2004��11�µڶ���
%
%��Ӧ�綯����������ϳɴų�ʸ��ͼ
clear, clf, whitebg('w')
I=10; freq = 50; w = 2*pi*freq;               % 50 Hz���ٶ� (rad/s)
t = 0:1/5000:12.3/50;
Ia=I*sin(w*t); Ib=I*sin(w*t-2*pi/3); Ic=I*sin(w*t+2*pi/3); % A,B,C�����
% �������������ų��ı��ʽ��
kmag = 1/I;                % ѡ�ʵ������鳣���������ų���һ��Ϊ1 
Baa = kmag * Ia * (cos(0) + j*sin(0)); 	% �����е����ʾA�ų��ռ䷽��Ϊ0��
Bbb = kmag * Ib * (cos(2*pi/3) + j*sin(2*pi/3)); 	% B�ų��ռ䷽��Ϊ120��
Bcc = kmag * Ic * (cos(-2*pi/3) + j*sin(-2*pi/3)); 	% C�ų��ռ䷽��Ϊ-120��
Bnet = Baa + Bbb + Bcc; 			% ����ϳɴų� 
% �ֱ𻭳��ϳɴų�Bnet������ų�Baa,Bbb,Bcc��ʸ����ֵ�ͷ���
% BnetΪ��ɫ��BaaΪ��ɫ��BbbΪ��ɫ��BccΪ�Ż�ɫ��
plot(Bnet,'k');	 % �����ϳɴų������˵�Ĺ켣���ο�������һ��԰
set(gcf,'color','w')                        % ��ͼ�α���ɫΪ��ɫ
axis square;   axis([-2 2 -2 2]);hold on;
% �ֱ𻭳�����ż���
theta=linspace(-pi/8,pi/8,15);				% ���������ż����Ž�����
th1=theta;th2=theta+pi/3;th3=theta+2*pi/3;	% ���������ż��ķ�������
th4=theta+pi;th5=theta+4*pi/3;th6=theta+5*pi/3;
r=1.1*abs(Bnet(1));						% �����ż��İ뾶��ʹ֮�Դ���Bnet�ĳ���
% ������������ɫ�Ŀ������������Դż�
plot(r*cos(th1),r*sin(th1),'k',r*cos(th4),r*sin(th4),'k','LineWidth',6);
plot(r*cos(th2),r*sin(th2),'m',r*cos(th5),r*sin(th5),'m','LineWidth',6);
plot(r*cos(th3),r*sin(th3),'b',r*cos(th6),r*sin(th6),'b','LineWidth',6);
% �����ĸ��ų�������ǰ��������̶�����С��ʱ��仯����ϳɴų����Ϊ��ת����
% �øı�ͼ�ζ���(ֱ��)�����ķ���������,���겻�ظ���,�ٶȿ�,��������
% �����ü���ֱ���ߵĳ�ʼλ��,������ͼ����,ͼ������'Erasemode'��Ϊ'xor'��ʾ
% ���ö��󱻸�����ֵ��,ԭ���Ķ���ͼ�ξͲ��ٱ���
l1=plot([0 real(Baa(1))],[0 imag(Baa(1))]);	
set(l1,'erasemode','xor','LineWidth',2,'color','k')
l2=plot([0 real(Bbb(1))],[0 imag(Bbb(1))]);
set(l2,'erasemode','xor','LineWidth',2,'color','b')
l3=plot([0 real(Bcc(1))],[0 imag(Bcc(1))]);
set(l3,'erasemode','xor','LineWidth',2,'color','m')
l4=plot([0 real(Bnet(1))],[0 imag(Bnet(1))]);
set(l4,'erasemode','xor','LineWidth',2,'color','r')
% ���ϸ���������ݲ���xdata,ydata������ֵ
for ii = 1:length(t)
   set(l1,'xdata', [0 real(Baa(ii))],'ydata',[0 imag(Baa(ii))])
   set(l2,'xdata', [0 real(Bbb(ii))],'ydata',[0 imag(Bbb(ii))])
   set(l3,'xdata', [0 real(Bcc(ii))],'ydata',[0 imag(Bcc(ii))])
   set(l4,'xdata', [0 real(Bnet(ii))],'ydata',[0 imag(Bnet(ii))])
   fft(randn(2^8));                             % �����ٶ�
   drawnow
end
hold off;
