%��MATLAB���������γ��е�Ӧ��ָ�ϡ��ڰ�����8��3��2����
% �����Ӧ�����ת�ų����γ�
% �������ӿƼ���ѧ���������  �»�衱��� 1999��10�³��棬2004��11�µڶ���
%
%��Ӧ�綯����������ϳɴų�ʸ��ͼ
clear, clf, whitebg('w')
I=10; freq = 50; w = 2*pi*freq;               % 50 Hz���ٶ� (rad/s)
t = 0:1/5000:1.2/50;
Ia=I*sin(w*t); Ib=I*sin(w*t-2*pi/3); Ic=I*sin(w*t+2*pi/3); % A,B,C�����
% �������������ų��ı��ʽ��
kmag = 1/I;                                         % ѡ�ʵ������鳣���������ų���һ��Ϊ1 
Baa = kmag * Ia * (cos(0) + j*sin(0)); 	            % �����е����ʾA�ų��ռ䷽��Ϊ0��
Bbb = kmag * Ib * (cos(2*pi/3) + j*sin(2*pi/3)); 	% B�ų��ռ䷽��Ϊ120��
Bcc = kmag * Ic * (cos(-2*pi/3) + j*sin(-2*pi/3)); 	% C�ų��ռ䷽��Ϊ-120��
Bnet = Baa + Bbb + Bcc; 			                % ����ϳɴų� 
% �ֱ𻭳��ϳɴų�Bnet������ų�Baa,Bbb,Bcc��ʸ����ֵ�ͷ���
% BnetΪ��ɫ��BaaΪ��ɫ��BbbΪ��ɫ��BccΪ�Ż�ɫ��
for ii = 1:length(t)
    plot(Bnet,'k');	                                % �����ϳɴų������˵�Ĺ켣���ο�������һ��԰
    set(gcf,'color','w')                            % ��ͼ�α���ɫΪ��ɫ
    hold on;
    % �����ĸ��ų�������ǰ��������̶�����С��ʱ��仯����ϳɴų����Ϊ��ת����
    plot([0 real(Baa(ii))],[0 imag(Baa(ii))],'k','LineWidth',2);	
    plot([0 real(Bbb(ii))],[0 imag(Bbb(ii))],'b','LineWidth',2);
    plot([0 real(Bcc(ii))],[0 imag(Bcc(ii))],'m','LineWidth',2);
    plot([0 real(Bnet(ii))],[0 imag(Bnet(ii))],'r','LineWidth',3);
    axis square;   axis([-2 2 -2 2]);drawnow;       % ������ͼ
    hold off;
end
