%��MATLAB���������γ��е�Ӧ��ָ�ϡ��ڰ�����8��4��2����a
% Smith�迹Բͼ�Ļ���(������ͼ����)
% �������ӿƼ���ѧ���������  �»�衱��� 1999��10�³��棬2004��11�µڶ���
%
% ֱ���ø�������SmithԲͼ
p = logspace(-2,2);                 % �趨p����ȡֵ��Χ
%q=logspace(-2,1,10);
q = [eps,0.05,0.10.2,0.5,1,2,5,10]; % �趨q����ȡֵ��Χ
x=[-p,p];
for r = q
    g=(r+i*x-1)./(r+i*x+1);			% g��Ӧ��gamma=(z+1)/(z-1)
    plot(g),hold on
    set(gcf,'color','w')            % ��ͼ�α���ɫΪ��ɫ
    axis equal                      % x-y����ȱ���
end
r = p;
for x=[-q,q]
    g=(r+i*x-1)./(r+i*x+1);
    plot(g),hold on
    axis equal
end
plot([0 0],[-1.1 +1.1],'r')         % ����׼��
plot([-1.1 +1.1],[0 0],'r')         % ����׼��
grid, hold off
