%��MATLAB���������γ��е�Ӧ��ָ�ϡ��ڰ�����8��4��3����a
% ���ֵ��Ʒ����Ĳ��μ�Ƶ��
% �������ӿƼ���ѧ���������  �»�衱��� 1999��10�³��棬2004��11�µڶ���
%
clf,format compact,t=0:0.001:1;
A0=10,w0=100,phi0=0
x=A0.*cos(w0*t+phi0);                       % ԭʼ�źű��ʽ
subplot(3,1,1),plot(t,x),hold
set(gcf,'color','w')                        % ��ͼ�α���ɫΪ��ɫ
xlabel('t'),legend('��Ƶ�ź�')
dA=input('�������=');dw=input('Ƶƫ=');dphi=input('����=');
y=(10+dA).*cos((w0+dw).*t+dphi);            % ���ۺϵ��ƺ���źű��ʽ
subplot(3,1,2),
plot(t,y),legend('���Ʋ���')       		    % ���ƺ��εĻ���
subplot(3,1,3),
Y=fft(y);plot(abs(Y)),                      % ���ۺϵ��ƺ���ź�Ƶ��
axis([0,50,0,5000]),legend('�ź�Ƶ��')
