%�����Դ���ʵ�����MATLAB���š������µ�һ����ʾ����ag41
% ���ݴ�������
% ���ӹ�ҵ���������  �»�� ��������� 2005��10��

format,echo off,disp(' ')
disp('ʮ��ѧ������߼����ſγ̷����б�����:'),pause
data=[154,49,83,67;...
158,99,81,75;...
155,100,68,86;...
145,63,75,96;...
145,63,75,96;...
141,55,65,75;...
155,56,64,85;...
147,89,87,77;...
147,96,54,100;...
145,60,76,67]
pause,disp('max(data)��������ֵ'),pause,max(data),pause
disp('min(data)�������Сֵ'),pause,min(data),pause
disp('mean(data)�����ƽ��ֵ'),pause,mean(data),pause
disp('std(data)����б�׼��'),pause,std(data),pause
disp('median(data)������м�Ԫ��'),pause,median(data),pause,disp(' ')
disp('sort(data)����Ԫ������'),pause,sort(data),pause,disp(' ')
%disp('cumtrapz(data)����Ԫ���ۼƻ���'),pause,cumtrapz(data),pause,disp(' ')
disp('x=rand(1,1000);hist(x)'),pause,
x=rand(1,1000);subplot(1,2,1),hist(x),pause,disp(' ')
disp('y=randn(1,1000);hist(y,50)'),pause,
y=randn(1,1000);subplot(1,2,2),hist(y,50),pause,disp(' ')
echo on,R=corrcoef(x,y)
pause,cov(x,y),
pause,t=0:.001:3; u=sin(300*t)+2*cos(200*t) ;
U=fft(u);subplot(1,2,1),plot(abs(U),'linewidth',2)
pause,v=axis,pause,disp(' ')
pause,subplot(1,2,2),plot(abs(U),'linewidth',2)
pause,axis([0,300,0,3000])
echo off,disp('��������'),disp(' ')
disp('sound(u)'),pause,sound(u)
