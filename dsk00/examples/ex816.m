%��MATLAB���������γ��е�Ӧ��ָ�ϡ��ڰ�����8��1��6����
% ����г���·
% �������ӿƼ���ѧ���������  �»�衱��� 1999��10�³��棬2004��11�µڶ���
%
r1=2; r2=3; L1=0.75e-3; L2=0.25e-3;     % ԭʼ����
C=1000e-12;rs=28200;
L=L1+L2;r=r1+r2;rse=rs*(L/L1)^2; 		% ��������
f0=1/(2*pi*sqrt(C*L));
Q0=sqrt(L/C)/r,r0=L/C/r;			    % ����Q0ֵ
re=r0*rse/(r0+rse); 				    % �����������·����Ĳ���
Q=Q0*re/r0,B=f0/Q,				        % ʵ��Qֵ��ͨ��
s=log10(f0);
f=logspace(s-.1,s+.1,501);w=2*pi*f;		% �趨�����Ƶ�ʷ�Χ������
z1e=r1+j*w*L; z2e=r2+1./(j*w*C);        % ��Ч����·�������翹֧·���迹
ze = 1./(1./z1e+1./z2e+1./rse);	        % ��Ч����·������֧·�Ĳ����迹
subplot(2,1,1),loglog(w,abs(ze)),grid	% ��������Ƶ����
set(gcf,'color','w')                    % ��ͼ�α���ɫΪ��ɫ
axis([min(w),max(w),0.9*min(abs(ze)),1.1*max(abs(ze))])
subplot(2,1,2),semilogx(w,angle(ze)*180/pi),grid % ����Ƶ����
axis([min(w),max(w),-100,100])
fh=w(find(abs(1./(1./z1e+1./z2e))>50000))/2/pi; % % ������Դ���50k��Ƶ��
fhmin=min(fh),fhmax=max(fh),
