%��MATLAB���������γ��е�Ӧ��ָ�ϡ��ڶ��µ������ʾ�����(��ά��ͼ)
% �������ӿƼ���ѧ���������  �»�衱��� 1999��10�³��棬2004��11�µڶ���
%
clf
echo off
pause,disp('��Ļ�ָ�')
pause,disp('�������')
echo on
z=0:0.1:2*pi;x=sin(z);y=cos(z);
subplot(1,2,1),plot(x,y),subplot(1,2,2),plot(x,y),axis('equal')
pause,V=axis
echo off
pause,disp('�����趨')
pause,disp('axis(V)��axis([xmin, xmax, ymin, ymax])')
echo on
pause,axis([-1 1 -0.9 1.2])
pause,axis('equal')
pause,axis('normal')
echo off
disp('��ά����'),
echo on
pause, z=0:0.1:4*pi;x=cos(z);y=sin(z);plot3(x,y,z);shg
pause,set(gcf,'color','w')            % ��ͼ�α���ɫΪ��ɫ
echo off
disp('��ά����'),
disp('���趨�Ա���ƽ���ϵĵ���X��Y,����Щ�����ϵ�z'),
disp('Ȼ����mesh(z)��surf(X,Y,z)����ά����'),
echo on
pause, x=-8:0.5:8;y=x';X=ones(size(y))*x;Y=y*ones(size(x));
pause,subplot(1,2,1),plot(X,Y),
pause,subplot(1,2,2),plot(Y,X),
pause,subplot(1,1,1), R=sqrt(X.^2+Y.*Y); z=sin(R)./R; mesh(z)
pause,R=sqrt(X.^2+Y.*Y)+eps; z=sin(R)./R; figure(1),mesh(z)
pause,R=abs(X)+abs(Y)+eps; z1=sin(R)./R; figure(2),mesh(z1)
pause,text(10,30,1.1,'R=abs(X)+abs(Y),z=sin(R)./R'),view(20,0),
pause,subplot(2,2,1),R=sqrt(X.^2+Y.*Y); z=sin(R)./R; meshc(z)
pause,title('meshc(z),shading flat'),shading flat
pause,set(gcf,'color','w')
pause,subplot(2,2,2), R=sqrt(X.^2+Y.*Y)+eps; z=sin(R)./R;meshz(z)
pause,title('meshz(z),shading interp'),shading interp
pause,subplot(2,2,3), R=abs(X)+abs(Y)+eps; z1=sin(R)./R; surfc(z1)
pause,title('surfc(z1),shading flat'),shading flat,%colormap(gray)
pause,subplot(2,2,4); surfl(z1),view(20,0)
pause,title('surfl(z1),view(20,0)')
echo off