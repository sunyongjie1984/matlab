%��MATLAB���������γ��е�Ӧ��ָ�ϡ���������6��7��2����
% ��ɫ��ĵ�������
% �������ӿƼ���ѧ���������  �»�衱��� 1999��10�³��棬2004��11�µڶ���
%
clear;                                      % �幤���ռ䣬���벨�����������Ļ����
Lambda = input('�����Ĳ���(��λΪ nm): (����ȡ500) ');
Lambda = Lambda * 1e-9;   		            % ��nm�� ��Ϊ m
aWidth = input('������ (��λΪ mm): (����ȡ0.2��1��2) ');
aWidth = aWidth  * 0.001;  	                % ��mm �任Ϊ m
Z = input('����쵽���ľ��� (��λΪ m): (����ȡ1) ');
ymax = 3*Lambda*Z/aWidth;	                % ��Ļ��Χ����y��
Ny = 51;                                    % ��Ļ�ϵĵ�������y��
ys = linspace(-ymax,ymax,Ny);
NPoints = 51;                               % ���ϵĵ�������y��
yPoint = linspace(-aWidth/2,aWidth/2,NPoints);   % �ѷ��ϵĵ����������
for j=1:Ny			                        % ����Ļ��y�������ѭ��
    % �Թ���и�����ѭ��,�����㵽��Ļλ�õľ���
    L = sqrt((ys(j)-yPoint).^2 + Z^2 );		% L��һ������
    Phi = 2*pi.*(L-Z)./Lambda;              % �����������Ļ���ĵ���λ��,Ҳ��һ������
    % ��ÿ���������ۼӺ�
    SumCos = sum(cos(Phi)); 	            % �������
    SumSin = sum(sin(Phi)); 
    % ����Ļ�ϵĹ�һ����ǿ;
    B(j) = (SumCos^2 + SumSin^2)/NPoints^2;  
end
plot(ys,B,'*',ys,B);grid	                % ��Ļ�Ϲ�ǿ��λ�õĹ�ϵ����
axis([-ymax, ymax, 0.0, 1.0]);
set(gcf,'color','w')                        % ��ͼ�α���ɫΪ��ɫ
