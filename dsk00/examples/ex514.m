%��MATLAB���������γ��е�Ӧ��ָ�ϡ���������5��1��4����
% ������Ļ���
% �������ӿƼ���ѧ���������  �»�衱��� 1999��10�³��棬2004��11�µڶ���
%
x=-2:0.1:2;						% ����x����,ȷ����Χ��ȡ���ܶ�
subplot(1,2,1)					% �����������ͼ
for c=-3:3 plot(x,x.^3+c*x),hold on, end, grid		% ȡ��ͬ��c
axis('equal'), axis([-2 2 -3 3])		% x,y����ȱ�����ȷ���䷶Χ
subplot(1,2,2),
for a=-3:3 plot(x,a*x.^3+x),hold on, end, grid		% ȡ��ͬ��a
axis('equal'), axis([-2 2 -3 3])
set(gcf,'color','w')                                % ��ͼ�α���ɫΪ��ɫ
gtext('a=-3'), gtext('a=0'), gtext('a=3')		    % ��ע�ַ�
gtext('c=-3'), gtext('c=0'), gtext('c=3')
gtext('x'), gtext('y')
