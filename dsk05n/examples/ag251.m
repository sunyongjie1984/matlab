%�����Դ���ʵ�����MATLAB���š��ڶ��µ������ʾ����һag251
% ��ά��ͼ
% ���ӹ�ҵ���������  �»�� ��������� 2005��10��

format, clear i ,echo on
Y=5*(rand(1,10)-.5),disp(' ')
pause,plot(Y,'b','linewidth',2)
pause, title('my first plot'), xlabel('n'), ylabel('Y'),grid
pause, t=0:0.5:4*pi; y=exp(-0.1*t).*sin(t); plot(t,y,'linewidth',2)
pause, t=0:0.5:4*pi; y1=exp(-0.1*t).*sin(t+1); plot(t,y1,'linewidth',2),pause
disp('���ƶ�����ߵ����ַ���'),disp(' '),pause
disp('һ���� plot(x,[y1,y2,...]'),disp(' '),pause
plot(t,[y;y1],'linewidth',2)
disp('������ hold ����'),disp(' '),pause
clf, plot(t,y,'linewidth',2), hold, 
pause,plot(t,y1,'bo','linewidth',2),hold off
pause,t2=0:.2:2*pi; y2=exp(-0.5*t2).*sin(5*t2+1); plot(t2,y2,':'),grid,pause
disp('������ plot(x1,y1,x2,y2,...)'),disp(' ')
pause, plot(t,y,'.-',t2,y2,'linewidth',2),disp(' ')
pause,plot(t,y,'+r',t2,y2,':b','linewidth',2),disp(' ')
pause, title('����,���ͺ���ɫ'),xlabel('ʱ��'), ylabel('Y'),pause
disp('�ġ��� plotyy(x1,y1,x2,y2)����'),disp(' ')
pause,y3=5*y2; plotyy(t,y',t2,y3),grid,pause 
%gtext('t,t2'),gtext('y'),gtext('y3')
disp('���������ͼ'),disp(' ')
pause,subplot(2,2,1),stem(t,y), title('stem(t,y)')
pause,subplot(2,2,2),stairs(t,y),title('stairs(t,y)')
pause,subplot(2,2,3),bar(t,y),title('bar(t,y)'),axis([0,20,-1,1]) 
pause,subplot(2,2,4),fill(t,y,'r'),title('fill(t,y,''r'')'),pause
disp('������ͼ'),disp(' ')
pause,z=exp((-.1+i)*t);
pause,subplot(2,2,1),plot(z),title('������ͼplot(z)')
pause,subplot(2,2,2),plot(t,z),title('������ͼplot(t,z)')
pause,subplot(2,2,3),polar(angle(z),abs(z)),title('polar(angle(z),abs(z))')
pause,subplot(2,2,4),semilogx(t,z),title('semilogx(t,z)')
pause,z=0:0.1:2*pi;x=sin(z);y=cos(z);
pause,subplot(1,2,1),plot(x,y),
pause,subplot(1,2,2),plot(x,y),axis('equal'),axis([-1, 1, -1, 1])
echo off

