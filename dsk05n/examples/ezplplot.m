%�����Դ���ʵ�����MATLAB���š�����
% һ���ռ�ƽ������ɳ���
% ���ӹ�ҵ���������  �»�� ��������� 2005��10��

zmax=10;dx=1;
[x,y]=meshgrid(-zmax:dx:zmax);
Funfcn=input('����ƽ�淽��  ','s');
z1=eval(solve(Funfcn,'z')); 
mesh(x,y,z1);hold on;
set(gcf,'color','w')