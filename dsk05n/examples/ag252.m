%�����Դ���ʵ�����MATLAB���š��ڶ��µ������ʾ�����ag251
% ��ά��ͼ����Ļ����
% ���ӹ�ҵ���������  �»�� ��������� 2005��10��

clf
disp('��ά����'),echo on
pause, z=0:0.1:4*pi;x=cos(z);y=sin(z);plot3(x,y,z);shg
pause, x=-8:0.5:8;y=x';X=ones(size(y))*x;Y=y*ones(size(x));
pause,subplot(1,2,1),plot(X,Y),
pause,subplot(1,2,2),plot(Y,X),
pause,subplot(1,1,1), R=sqrt(X.^2+Y.*Y); z=sin(R)./R; mesh(z)
pause,R=sqrt(X.^2+Y.*Y)+eps; z=sin(R)./R; figure(1),mesh(z)
pause,R=abs(X)+abs(Y)+eps; z1=sin(R)./R; figure(2),mesh(z1)
pause,text(10,30,1.1,'R=abs(X)+abs(Y),z=sin(R)./R'),view(20,0),
pause,disp('��Ļ�ָ�')
pause,disp('�����趨')
pause,subplot(2,2,1),R=sqrt(X.^2+Y.*Y); z=sin(R)./R; meshc(z)
pause,title('meshc(z),shading flat'),shading flat
pause,subplot(2,2,2), R=sqrt(X.^2+Y.*Y)+eps; z=sin(R)./R;meshz(z)
pause,title('meshz(z),shading interp'),shading interp
pause,subplot(2,2,3), R=abs(X)+abs(Y)+eps; z1=sin(R)./R; surfc(z1)
pause,title('surfc(z1),shading flat'),shading flat,%colormap(gray)
pause,subplot(2,2,4); surfl(z1),view(20,0)
pause,title('surfl(z1),view(20,0)')


