%《线性代数实验践及MATLAB入门》第四章第三节演示程序ag43
% 多项式计算函数库
% 电子工业出版社出版  陈怀琛 龚杰民合著 2005年10月

format
disp(' ')
disp('多项式四则运算'),disp(' '),pause
disp('相乘:a=[2,4,6,8],b=[3,6,9],c=conv(a,b)'),pause;disp(' ')
a=[2,4,6,8],b=[3,6,9],c=conv(a,b),pause
disp('相加:d=a+[0,b]'),pause,d=a+[0,b],pause;disp(' ')
disp('相除:[q,r]=deconv(c,a)'),pause,[q,r]=deconv(c,a),pause;disp(' ')
disp('a1=a+1'),pause,a1=a+1,pause;disp('')
disp('[q1,r1]=deconv(c,a1)'),pause,[q1,r1]=deconv(c,a1),pause;disp(' ')
disp('conv(q1,a1)+r1'),pause,conv(q1,a1)+r1,pause;disp(' ')
%disp('多项式求导数:  e=polyder(c)'),pause,e=polyder(c),pause;disp(' ')
disp('多项式方程求根'),disp(' '),pause;disp(' ')
disp('ra=roots(a),rb=roots(b);rc=roots(c);[[ra;rb],rc]'),pause;disp(' ')
format compact,ra=roots(a),rb=roots(b),rc=roots(c),pause,format
disp(' ')
%disp('多项式求值:(polyval)'),pause;
%disp(' ')
%disp('线性间隔:w=linspace(0,10);'),pause,w=linspace(0,10);disp(' ')
%disp('A=polyval(a,j*w);plot(w,abs(A))'),pause;disp(' ')
%A=polyval(a,j*w);h=plot(w,abs(A));set(h,'linewidth',2),pause
%disp('B=polyval(b,j*w);plot(w,abs(B))'),pause; 
%disp(' ')
%B=polyval(b,j*w);plot(w,abs(B)),pause
%disp('subplot(2,2,1);plot(w,abs(B./A)),subplot(2,2,3);plot(w,angle(B./A))'),pause;disp(' ')
%subplot(2,2,1);h=plot(w,abs(B./A));set(h,'linewidth',2)
%subplot(2,2,3);h=plot(w,angle(B./A));,set(h,'linewidth',2),pause
% disp('对数等间隔: w1=logspace(a,b,n)  %在10^a 到10^b之间按等比分为n份'),pause;disp(' ')
% disp(' ')
% disp('w1=logspace(-1,1)');pause,w1=logspace(-1,1);pause
% disp(' ')
% disp('F=polyval(b,j*w1)./polyval(a,j*w1);'),pause;
% disp(' ')
% disp('subplot(2,2,2),loglog(w1,abs(F))'),pause;
% disp(' ')
% F=polyval(b,j*w1)./polyval(a,j*w1);subplot(2,2,2)
% loglog(w1,abs(F),'linewidth',2),pause
% disp(' ')
% disp('subplot(2,2,4);semilogx(w1,angle(F))'),pause;
% disp(' ')
% subplot(2,2,4);semilogx(w1,angle(F),'linewidth',2),pause
% disp(' ')
disp('曲线拟合:'),pause;
disp(' ')
disp('原始数据:');
disp(' ')
x=0:0.1:1;y=[-.447,1.978,3.28,6.16,7.08,7.34,7.66,9.56,9.48,9.30,11.2];
subplot(2,3,1),plot(x,y,'o'),pause
disp('a1=polyfit(x,y,1);xi=linspace(0,1);y1=polyval(a1,xi);'),pause;
disp(' ')
a1=polyfit(x,y,1);xi=linspace(0,1);y1=polyval(a1,xi);pause
disp('plot(x,y,''o'',xi,y1,''b''),pause')
disp(' ')
subplot(2,3,2),plot(x,y,'o',xi,y1,'b'),pause
disp('a2=polyfit(x,y,2);y2=polyval(a2,xi);plot(x,y,''o'',xi,y2,''m'')'),pause
disp(' ')
a2=polyfit(x,y,2);y2=polyval(a2,xi);
subplot(2,3,3),plot(x,y,'o',xi,y2,'r'),pause
disp('a3=polyfit(x,y,3);y3=polyval(a3,xi);plot(x,y,''o'',xi,y3,''r'')'),pause
disp(' ')
a3=polyfit(x,y,3);y3=polyval(a3,xi);
subplot(2,3,4),plot(x,y,'o',xi,y3,'r'),pause
disp('a9=polyfit(x,y,9);y9=polyval(a9,xi);plot(x,y,''o'',xi,y9,''b'')'),pause
disp(' ')
a9=polyfit(x,y,9);y9=polyval(a9,xi);
subplot(2,3,5),plot(x,y,'o',xi,y9,'b'),pause
disp('a10=polyfit(x,y,10);y10=polyval(a10,xi);plot(x,y,''o'',xi,y10,''b'')'),pause
disp(' ')
a10=polyfit(x,y,10);y10=polyval(a10,xi);
subplot(2,3,6),plot(x,y,'o',xi,y10,'b'),pause
disp('一维插值:interp1(x,y,xi,''method'')'),pause;disp(' ')
disp('z1=interp1(x,y,xi);plot(x,y,''o'',xi,z1)'),pause
disp(' ')
z1=interp1(x,y,xi);subplot(1,2,1),plot(x,y,'o',xi,z1),pause
disp('z2=interp1(x,y,xi,''spline'');plot(x,y,''o'',xi,z2,''b'')'),pause
disp(' ')
z2=interp1(x,y,xi,'spline');subplot(1,2,2),plot(x,y,'o',xi,z2,'b'),pause
disp('二维插值:interp2(x,y,z,xi,yi,''method'')'),pause;
disp(' ')
disp('width=1:5;depth=1:3;temps=[82 81 80 82 84;79 63 61 65 81;84 84 82 85 86];'),pause
disp(' ')
width=1:5;depth=1:3;temps=[82 81 80 82 84;79 63 61 65 81;84 84 82 85 86];pause
%disp('沿深度的中心线的温度分布:'),pause,echo on
%wi=1:0.2:5;d=2;t1=interp2(width,depth,temps,wi,d);,pause
%t2=interp2(width,depth,temps,wi,d,'cubic');plot(wi,t1,'--',wi,t2,'g'),pause
disp('沿宽度和深度二维分布:'),pause,disp(' ')
disp('di=1:0.2:3;wi=1:0.2:5;tc=interp2(width,depth,temps,wi,di'',''cubic'');'),pause
disp(' ')
di=1:0.2:3;wi=1:0.2:5;tc=interp2(width,depth,temps,wi,di','cubic');pause
subplot(1,1,1)
disp(' ')
disp('h=mesh(wi,di,tc),set(h,''linewidth'',1.5')
disp(' ')
h=mesh(wi,di,tc);set(h,'linewidth',1.5),pause
% disp('线性微分方程的解:'),disp(' '),pause
% disp('脉冲响应:'),pause
% disp(' ')
% disp('a=[1,5,4,7];b=[3,0.5,4];[r,p,k]=residue(b,a)'),pause
% disp(' ')
% a=[1,5,4,7];b=[3,0.5,4];[r,p,k]=residue(b,a),pause
% disp('t=0:0.2:10;yi=r(1)*exp(p(1)*t)+r(2)*exp(p(2)*t)+r(3)*exp(p(3)*t);plot(t,yi)'),pause
% disp(' ')
% t=0:0.2:10;yi=r(1)*exp(p(1)*t)+r(2)*exp(p(2)*t)+r(3)*exp(p(3)*t);
% subplot(1,2,1),h=plot(t,yi);set(h,'linewidth',2),pause
% disp(' ')
% disp('阶跃响应:')
% disp(' ')
% disp('a=[1,5,4,7,0];b=[3,0.5,4];[r,p,k]=residue(b,a)'),pause
% disp(' ')
% a=[1,5,4,7,0];b=[3,0.5,4];[r,p,k]=residue(b,a),pause
% disp(' ')
% disp('ys=r(1)*exp(p(1)*t)+r(2)*exp(p(2)*t)+r(3)*exp(p(3)*t)+r(4);plot(t,ys)'),pause
% disp(' ')
% ys=r(1)*exp(p(1)*t)+r(2)*exp(p(2)*t)+r(3)*exp(p(3)*t)+r(4);
% subplot(1,2,2),h=plot(t,ys);set(h,'linewidth',2),pause
% disp(' ')
% disp('在控制工具箱中:')
% disp(' ')
% disp('yi=impulse(b,a),及ys=step(b,a)'),pause
% echo off,clf
