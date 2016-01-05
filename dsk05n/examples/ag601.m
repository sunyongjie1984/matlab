%《线性代数实验践及MATLAB入门》第六章例题程序ag601
% 几种二元一次方程的解和图
% 电子工业出版社出版  陈怀琛 龚杰民合著 2005年10月
%
clear,clf,format compact
s1='x1-2*x2=-1';
s2='-x1+3*x2=3';
s3='-x1+2*x2=-3';
s4='-x1+2*x2=1';
subplot(1,3,1),
ezplot(s1),hold on,ezplot(s2),grid on
[x1a,x2a]=solve(s1,s2)
subplot(1,3,2),
ezplot(s1),hold on,ezplot(s3),grid on
[x1b,x2b]=solve(s1,s3)
subplot(1,3,3),
ezplot(s1),hold on,ezplot(s4),grid on
[x1c,x2c]=solve(s1,s4)
set(gcf,'color','w')
figure(2)
s5='x1+x2=-1';
s6='x1-x2=3';
s7='-x1+2*x2=-3';
ezplot(s5),hold on,ezplot(s6),ezplot(s7)
[x1d,x2d]=solve(s5,s6,s7)
set(gcf,'color','w'),grid on
