%�����Դ���ʵ�����MATLAB���š�����
% �����ռ�ƽ�漰�佻�ߵ����ɳ���
% ���ӹ�ҵ���������  �»�� ��������� 2005��10��
%
zmax=20;dx=1;
[x,y]=meshgrid(-zmax:dx:zmax);
Funfcn1=input('������һ��ƽ�淽��,��5.3.2ȡx+y-z=5  ','s');
z1=eval(solve(Funfcn1,'z')); 
Funfcn2=input('�����ڶ���ƽ�淽�̣���5.3.2ȡ2*x-3*y+z=3  ','s');
z2=eval(solve(Funfcn2,'z')); 
Funfcn3=input('����������ƽ�淽�̣���5.3.2ȡ-5*x+2*y-2*z=0  ','s');
z3=eval(solve(Funfcn3,'z')); 
tol=input('���ƽ��ߵ��ݲ�tol= ')
if isempty(tol) tol=1;end
mesh(x,y,z1);hold on;
mesh(x,y,z2);mesh(x,y,z3);
r01=abs(z1-z2)<=tol;	%��������z�����С��0.1���������
zz1=r01.*z1;yy1=r01.*y;xx1=r01.*x; 	%����Щ�����ϵ�����ֵ,����������ֵ
plot3(xx1,yy1,zz1,'x');	%������Щ��
r02=abs(z1-z3)<=tol;	%��������z�����С��0.1���������
zz2=r02.*z1;yy2=r02.*y;xx2=r02.*x; 	%����Щ�����ϵ�����ֵ,����������ֵ
plot3(xx2,yy2,zz2,'x');	%������Щ��
r03=abs(z3-z2)<=tol;	%��������z�����С��0.1���������
zz3=r03.*z3;yy3=r03.*y;xx3=r03.*x; 	%����Щ�����ϵ�����ֵ,����������ֵ
plot3(xx3,yy3,zz3,'x');	%������Щ��
colormap('default')
set(gcf,'color','w')
disp('������ƽ��Ľ���')
pause,hold off
[x0,y0,z0]=solve(Funfcn1,Funfcn2,Funfcn3)
double([x0,y0,z0]);
