%��MATLAB�����������γ��е�Ӧ��ָ�ϡ��ھ�����9��1��1����
% �����źŵ�MATLAB����
% �������ӿƼ���ѧ���������  �»�衱��� 1999��10�³��棬2004��11�µڶ���
%
clear, t0=0;tf=5;dt=0.05;t1=1; t=[t0:dt:tf];
% (1)��λ�����ź�,
% ��t1(t0��t1��tf)����һ����ʱ��Ϊdt,���Ϊ1�������ź�,����ʱ���Ϊ�㡣
t=[t0:dt:tf];st=length(t);
n1=floor((t1-t0)/dt);		            % ��t1��Ӧ���������
x1=zeros(1,st); 			            % ��ȫ���ź��ȳ�ʼ��Ϊ��
x1(n1)=1/dt;				            % ����t1���������ź�
subplot(2,2,1),stairs(t,x1)	            % ��ͼ��ע��Ϊ����stairs������plot����
set(gcf,'color','w')                    % ��ͼ�α���ɫΪ��ɫ
axis([0,5,0,1.1/dt]) 
%(2)��λ��Ծ�źţ�
%�źŴ�t0��tf����t1(t0��t1��tf) ǰΪ0����t1����һԾ�䣬�Ժ�Ϊ1.
%	����ǰ���伴��t,st,n1���������ͬ��ֻ��x1����Ϊx2
x2 = [zeros(1,n1-1),ones(1,st-n1+1)];   % ������Ծ�ź�
subplot(2,2,3),stairs(t,x2)			    % ��ͼ
axis([0,5,0,1.1])
%(3)����ָ���ź�
u=-0.5;w=10;x3=exp((u+j*w)*t);
subplot(2,2,2),plot(t,real(x3)) 	    % ��ͼ,
subplot(2,2,4),plot(t,imag(x3)) 	    % ��ͼ,
pause,subplot(1,1,1)