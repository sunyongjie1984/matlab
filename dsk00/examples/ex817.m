%��MATLAB���������γ��е�Ӧ��ָ�ϡ��ڰ�����8��1��7����
% ������·Ƶ����Ӧ����
% �������ӿƼ���ѧ���������  �»�衱��� 1999��10�³��棬2004��11�µڶ���
%
clear,dw=0.1;w=[.02:dw:20];s=j*w;us=1;      % ԭʼ����
r1=1;r2=2;C2=0.5;L=1;z21=s*L;
e=input('����Ԫ�����ͣ���У�����1�����ݣ�����2 (����ȡ1) ');
if e==1 L=input('��������(H)(����ȡ1)  '); z21=s*L; 
elseif e==2 C1=input('��������� (F) '); z21=1./(s*C1);
   else disp('Ԫ�����ʹ��󣬳������'),break,end
zc2=(1./s*C2);z22=r2+zc2;z2=z21.*z22./(z21+z22); % ����������
uL=us.*z2./(r1+z2);		                    % ��ѹ�������ϵĵ�ѹ
uC2=uL.*zc2./z22;			                % �ٷ�ѹ��������ϵĵ�ѹ
subplot(2,2,1),loglog(w,abs(uL));grid		% ��ͼ,ע��subplot�÷�
subplot(2,2,3),semilogx(w,angle(uL));grid
subplot(2,2,2),loglog(w,abs(uC2)),grid
subplot(2,2,4),semilogx(w,angle(uC2)),grid
set(gcf,'color','w')                        % ��ͼ�α���ɫΪ��ɫ
