%��MATLAB�����������γ��е�Ӧ��ָ�ϡ��ڰ�����8��1��2����
% ������·����̬����
% �������ӿƼ���ѧ���������  �»�衱��� 1999��10�³��棬2004��11�µڶ���
%
R1=2;R2=3;R3=4;XL=2; XC1=3; XC2=5; 	        % ����ԭʼ����
us1=8, us2=6; us3=8; us4=15;		 	    % ����ԭʼ����
Y1=1/R1+1/(j*XL); 			                % �ø�����ʾ��֧·����
Y2=1/R2-1/(j*XC1);
Y3=1/R3-1/(j*XC2);
A=[Y1+Y2,-Y2;-Y2,Y2+Y3]; 		            % �����Է������г�ua,ub��ϵ������
B=[us1/(j*XL)+us2/R1; us3/R3+us4/(-j*XC2)-us2/R2]; 	% �г����Է������Ҷ�
U=A\B;ua=U(1),ub=U(2) 				        % ��ua,ub
I1=ua*Y1,I2=(ub-ua)*Y2,I3=ub*Y3,		    % ���֧·��I 
I1R=ua/R1,I1L=ua/(j*XL),
I2R=(ub-ua)/R2,I2C=(ub-ua)/(-j*XC1),
I3R=ub/R3,I3C=ub/(-j*XC2),
hold off
H=compass([ua,ub,I1,I2,I3]);		        % ������ͼ
set(H,'linewidth',2) 	                    % �ı�����ͼ�߿�
set(gcf,'color','w')                        % ��ͼ�α���ɫΪ��ɫ