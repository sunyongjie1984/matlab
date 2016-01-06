%��MATLAB���������γ��е�Ӧ��ָ�ϡ���������6��4��3����
% ��λ�ֲ����糡����
% �������ӿƼ���ѧ���������  �»�衱��� 1999��10�³��棬2004��11�µڶ���
%
fprintf('�����λ�ֲ����� V(x,y) \n');
fprintf('����:  log(x.^2 + y.^2) \n');
V = input(': ','s');                        % �����ַ��� V(x,y)
NGrid = 20;                                 % ��ͼ����������
xMax = 5;                                   % ��ͼ���� x= -xMax �� x= xMax
xPlot = linspace( -xMax, xMax, NGrid);      % ��ͼȡ��xֵ
[x,y]=meshgrid(xPlot);
VPlot=eval(V);
[ExPlot, EyPlot] = gradient(-VPlot);		% �糡�ǵ�λ�ĸ��ݶ�
clf; subplot(1,2,1),meshc(VPlot);           % �����ȸ��ߵ���ά����
set(gcf,'color','w')                        % ��ͼ�α���ɫΪ��ɫ
xlabel('x');  ylabel('y'); zlabel('��λ');
% �涨�ȸ���ͼ�ķ�Χ������
subplot(1,2,2), axis([-xMax xMax -yMax yMax]);    % �����ڶ���ͼ
cs = contour(x,y,VPlot);                    % ���ȸ���
clabel(cs); hold on;                        % �ڵȸ���ͼ�ϼ��ϱ��
%@ �ڵȸ���ͼ�ϼ��ϵ糡����
quiver(x,y,ExPlot,EyPlot);                  % ���糡 E �ļ�ͷͼ
xlabel('x');  ylabel('y');hold off;
