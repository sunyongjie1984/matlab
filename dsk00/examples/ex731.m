%��MATLAB���������γ��е�Ӧ��ָ�ϡ���������7��3��1����
% ����ϵ���Ե����ɶ��񶯵�Ӱ��
% �������ӿƼ���ѧ���������  �»�衱��� 1999��10�³��棬2004��11�µڶ���
%
clear,wn=10;tf=2;
for i=1:2
    if i==1 x0=1;v0=0; else x0=0;v0=1;end
    for j=1:10
        zeta(j)=0.1*j;					                    % �Բ�ͬ�Ħ�
        wd(j)=wn*sqrt(1-zeta(j)^2); 		                % ��wd
        a=sqrt((wn*x0*zeta(j)+v0)^2+(x0*wd(j))^2)/wd(j); 	% �����A 
        phi=atan2(wd(j)*x0,v0+zeta(j)*wn*x0); 	            % ��atan2��Ϊ�������������
        t=0:tf/1000:tf;				                        % �趨�Ա�������
        x(j,:)=a*exp(-zeta(j)*wn*t).*sin(wd(j)*t+phi); 	    % ����ɹ���
    end
    subplot(1,2,i),plot(t,x(1,:), t,x(2,:), t,x(3,:), t,x(4,:), t,x(5,:),...	% ��ͼ
        t,x(6,:), t,x(7,:), t,x(8,:), t,x(9,:), t,x(10,:))
    set(gcf,'color','w')                                    % ��ͼ�α���ɫΪ��ɫ
    grid on,pause
end
figure(2),mesh(x)                                           % ����άͼ
set(gcf,'color','w'),pause,                                 % ��ͼ�α���ɫΪ��ɫ                            
