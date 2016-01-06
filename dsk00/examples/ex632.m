%��MATLAB���������γ��е�Ӧ��ָ�ϡ���������6��3��2����
% ����ѧ���̼�P-Vͼ
% �������ӿƼ���ѧ���������  �»�衱��� 1999��10�³��棬2004��11�µڶ���
%
% ex632 - ��P-Vͼ��������ѧ���������Ĺ�
clear all; % ������ʼ��
figure,text(0.1,0.5,'�뽫ͼ��С,�������Ͻ�'),pause,clf
nMoles = input('���������Ħ����: ');
P(1) = input('�����ʼѹ��(Pa): ');
V(1) = input('�����ʼ�ݻ�(m^3): ');
R = 8.314;                      % ���峣�� (J/Ħ��)
T(1) = P(1)*V(1)/(nMoles*R);    % ��ʼ�¶�
PPlot = P(1);                   % ���³�ʼѹ���Ա��ͼ
VPlot = V(1);                   % ���³�ʼ�ݻ��Ա��ͼ
WTotal = 0;                     % ��ʼ������ֵ (J)
iPoint = 1;                     % ��ʼ��
NCurve = 100;                   % �����������õĵ���
% �ڲ˵���ѡ��quit֮ǰ����ѭ��
QuitType = 4;                   % �˵��ϵ��ĸ�ѡ����Quit
PathType = 0;                   % ����ѭ��ʱ�������ԪPathType��ֵ
while(PathType ~= QuitType)    
    % ѡ��·�����ͻ��˳�
    iPoint = iPoint + 1;                                % ��һ��
    fprintf('�Թ��� #%g \n',iPoint-1);
    PathType = menu(sprintf('���� %g: ѡ����һ·��',iPoint-1), ...
        '��ѹ', '����', '����','�˳�');				    % ͼ�ν���˵��������
    switch PathType
    case 1                                              % ��ѹ·��	
        V(iPoint) = input('�������ݻ�: ');
        P(iPoint) = P(iPoint-1);                        % ѹ������
        T(iPoint) = P(iPoint)*V(iPoint)/(nMoles*R);     % ���¶�
        W = P(iPoint)*( V(iPoint) - V(iPoint-1) );	    % �����ѹ���������Ĺ�
        VPlot = [VPlot V(iPoint)];
        PPlot = [PPlot P(iPoint)];
        
    case 2                                              % ����·��
        P(iPoint) = input('������ѹ��: ');
        V(iPoint) = V(iPoint-1);
        T(iPoint) = P(iPoint)*V(iPoint)/(nMoles*R);
        W = 0;                                          % ����·���������Ĺ�Ϊ��
        VPlot = [VPlot V(iPoint)];                      % ���ϻ�ͼ�����ݻ���ѹ����       
        PPlot = [PPlot P(iPoint)];
        
    case 3                                              % ����·��
        V(iPoint) = input('�������ݻ�: ');              %
        T(iPoint) = T(iPoint-1);						% �¶Ȳ���
        P(iPoint) = nMoles*R*T(iPoint)/V(iPoint);	    % �����ݻ�����ѹ��
        W = nMoles*R*T(iPoint)*log(V(iPoint)/V(iPoint-1));% �����·�������Ĺ�
        % ��Ԫ��Ⱥ���������·���ϵ�P��V,�ӽ���ͼ������
        VNew = linspace(V(iPoint-1),V(iPoint) ,NCurve);
        PNew = nMoles*R*T(iPoint)./VNew;
        VPlot = [VPlot VNew];                           % ���µ�V,P������ͼ������
        PPlot = [PPlot PNew];      
    otherwise	
    end
    % ������ĿǰΪֹ��PVͼ
    if( PathType ~= QuitType )
        WTotal = WTotal + W;  		                    % �������Ĺ��ӽ��ܹ�
        figure(gcf);plot(V,P,'o',VPlot,PPlot,'-')
        set(gcf,'color','w')                            % ��ͼ�α���ɫΪ��ɫ
        axis([0 1.2*max(V) 0 1.2*max(P)]);              % �趨ͼ��߽�
        xlabel('V(m^3)');  ylabel('P(Pa)');
        for i=1:iPoint
            text(V(i),P(i),sprintf(' %g',i));           % ���ÿһ��
        end
        title(sprintf('������ = %g J, �ܹ� = %g J',W,WTotal) );
        drawnow;                                        % ������ͼ
    end
end
WTotal
