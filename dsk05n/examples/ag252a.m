%�����Դ���ʵ�����MATLAB���š��ڶ��µ������ʾ�����ag251
% ��ά��ͼ����Ļ����
% ���ӹ�ҵ���������  �»�� ��������� 2005��10��

clear, close all
disp('������ά����'),echo on
pause, z=0:0.1:4*pi;x=cos(z);y=sin(z);plot3(x,y,z),grid on
pause,disp('������ά�ռ��еķ������')
figure(2)
pause,Gw=[-4,-3,0;4,-3,0;0,7,0;-4,-3,0]' 	    % ����Ķ�������
pause,Gt=[0,-3,0;0,-3,3;0,2,0;0,-3,0]'		% β��Ķ�������
G=[Gw,Gt]		 		 				% �������������ε����ݼ�
pause,plot3(Gw(1,:),Gw(2,:),Gw(3,:),'r'),hold on,grid on
pause,plot3(Gt(1,:),Gt(2,:),Gt(3,:),'g'),
axis equal
pause,disp('��ά�ռ��е�����'),echo on
disp('����xyƽ�����趨�Ա�������'),echo on
figure(3)
pause, x=-8:0.5:8;y=x';X=ones(size(y))*x;Y=y*ones(size(x));
pause,subplot(1,2,1),plot(X,Y),
pause,subplot(1,2,2),plot(Y,X),
pause,disp('��Ҫ����ƽ�淽��Ϊz1=3x-2y��z2=-x+2y'),echo on
figure(4)
pause,Z1=3*X-2*Y;mesh(Z1);hold on
pause,Z2=-X+2*Y;mesh(Z2),
pause,disp('��Ҫ����ƽ�淽��Ϊz1=3x-2y��z2=-x+y'),echo on
figure(5)
pause,Z1=3*X-2*Y;mesh(X,Y,Z1);hold on
pause,Z2=-X+Y;mesh(X,Y,Z2),
