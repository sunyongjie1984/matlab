%��MATLAB���������γ��е�Ӧ��ָ�ϡ��ڰ�����8��1��3����
% ������·����̬����
% �������ӿƼ���ѧ���������  �»�衱��� 1999��10�³��棬2004��11�µڶ���
%
z1=3*j;z2=5;z3=5/j;uc=10;
z23=z2*z3/(z2+z3);z=z1+z23;
Ic=uc/z3,Ir=uc/z2,I=Ic+Ir,ul=I*z1,us=I*z
disp('  	  Ir        Ic         I         ul         us  ')
disp('��ֵ'),disp(abs([Ir,Ic,I,ul,us]))
disp('���'),disp(angle([Ir,Ic,I,ul,us])*180/pi)
% compass��MATLAB�л��Ƹ�������ͼ���������������ͼ�ر𷽱㡣
ha=compass([Ir,Ic,I,ul,us]);            % 
set(ha,'linewidth',3)
set(gcf,'color','w')                    % ��ͼ�α���ɫΪ��ɫ
