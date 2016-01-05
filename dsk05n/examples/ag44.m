%《线性代数实验践及MATLAB入门》第四章第四节演示程序ag44
% 函数功能及数值积分函数库
% 电子工业出版社出版  陈怀琛 龚杰民合著 2005年10月

disp('函数功能及数值积分函数库funfun'),disp(' ')
disp('type humps'),pause,disp(' ')
type humps,disp(' ')
disp('绘制函数曲线')
disp('fplot(''humps'',[0,2]) ')
disp(' ')
pause,fplot('humps',[0,2]),pause
echo on,figure
pause,fplot('besselj(1,x)',[0,10]),hold on
pause,fplot('besselj(2,x)',[0,10]),hold on
pause,fplot('besselj(5,x)',[0,10]),hold on
grid,pause,hold off
subplot(1,2,1),fplot('tan',[-2*pi 2*pi -2*pi 2*pi],'*'),grid 
subplot(1,2,2),ezplot tan(sin(x))-sin(tan(x)),grid 
echo off
disp('求函数零点')
disp('z=fzero(''humps'',1),grid,hold on,plot(z,0,''cx'')'),pause,disp(' ')
figure(1)
z=fzero('humps',1),grid,hold on,h=plot(z,0,'cx');set(h,'linewidth',2)
disp('求函数极值')
disp('m=fmin(''humps'',0,1.5),plot(m,humps(m),''rx'')'),pause,disp(' ')
m=fmin('humps',0,1.5),h=plot(m,humps(m),'rx');set(h,'linewidth',2),hold off
fmin('humps',0,1.5)
disp('定积分')
disp('s=quad(''humps'',1,2)'),pause,s=quad('humps',1,2)
disp(' '),
disp('微分方程数字积分')
disp('[T,Y] = ode23(''yprime'', T0, Tfinal, Y0)'),pause,disp(' ')
global r,[T,Y] = ode23('humps1', 0, 2, 1);
figure,h=plot(T,Y);set(h,'linewidth',2),pause
disp('输入r, 在 0<r<10 之间选择');r=input('r= ');
x0=input('x0='); xf= input('xf='); y0=input('y0=[y10;y20]=');
[x,y]= ode45('vdpl', x0, xf, y0); plot(x,y)

%function yp = humps1(x,y)
%yp = 1 ./ ((x-.3).^2 + .01) + 1 ./ ((x-.9).^2 + .04) - 6;
