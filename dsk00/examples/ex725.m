%��MATLAB�����������γ��е�Ӧ��ָ�ϡ���������7��2��5����
% ����ϳɵĽ������
% �������ӿƼ���ѧ���������  �»�衱��� 1999��10�³��棬2004��11�µڶ���
%
P=input('P=(����ȡ15000) '),
l=input('l=(����ȡ0.4) '),		% ��������ƫ�ľ�
asigma=input('[��]=(����ȡ35e6) '), 				% ��������Ӧ��
a=[asigma*pi/32,0,-P/8,-P*l]; 	% �����δ������̵�ϵ������
r=roots(a);							% ��������̵ĸ�
d=r(find(imag(r)==0))				% ȥ���������