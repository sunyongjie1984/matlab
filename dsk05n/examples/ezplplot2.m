%�����Դ���ʵ�����MATLAB���š�����
% �����ռ�ƽ�漰�佻�ߵ����ɳ���
% ���ӹ�ҵ���������  �»�� ��������� 2005��10��
%
zmax=10;dx=1;
[x,y]=meshgrid(-zmax:dx:zmax);
Funfcn1=input('������һ��ƽ�淽��  ','s');
z1=eval(solve(Funfcn1,'z')); 
Funfcn2=input('�����ڶ���ƽ�淽��  ','s');
z2=eval(solve(Funfcn2,'z')); 
mesh(x,y,z1);hold on;
mesh(x,y,z2);pause
r01=abs(z1-z2)<=1;	%��������z�����С��0.1���������
zz1=r01.*z1;yy1=r01.*y;xx1=r01.*x; 	%����Щ�����ϵ�����ֵ,����������ֵ
plot3(xx1,yy1,zz1,'x');	%������Щ��
hold off,set(gcf,'color','w')