%��MATLAB���������γ��е�Ӧ��ָ�ϡ��ھ�����9��3��2����
% ��̬���ڵĴ���,�����ͷ���
% �������ӿƼ���ѧ���������  �»�衱��� 1999��10�³��棬2004��11�µڶ���
%
fA = input('A���ڵķ���ϵ������fA=(����fA=[3,2,1]) ');	 % ���뻷�ڲ���
gA = input('A���ڵķ�ĸϵ������gA=(����gA=[5,4,7,3]) ');
fB = input('B���ڵķ���ϵ������fB=(����fB=[5,0]) ');	 % 
gB = input('B���ڵķ�ĸϵ������gB=(����gB=[9,8,1]) ');	 % 
Conn = menu(sprintf('���ӷ�ʽ'),  '����', '����', '����');% ͼ�ν���˵��������
switch Conn
case 1									                % ����
   f = conv(fA,fB)
   g = conv(gA,gB)
case 2									                % ����
   	f = polyadd(conv(fA,gB),conv(fB,gA))
	g = conv(gA,gB)
case 3									                % ����
   f = conv(fA,gB)
   g = polyadd(conv(fA,fB),conv(gA,gB))
otherwise
   disp('δ����ȷ�������ӷ�ʽ,������Ч')
end
