x=0:0.1:20;
y1 =exp(-0.1*x).*sin(x);
y2 =exp(-0.1*x);
y3 =-exp(-0.1*x);
plot(x,y1,'ro',x,y2,'-.',x,y3,'b-.')

figure
t=0:pi/50:10*pi;plot3(sin(t),cos(t),t)
xlabel('x'),ylabel('y')

figure

[x,y]=meshgrid(-2:.1:2);
surf(x,y,x.*y.*sin(x.*y))
colormap (flag)   
shading  interp
axis  off

%%%%%%%%%%%%%%%%%%%%%%%%%
f=[2 3 5];
A=[-1 -2 -2;2 -1 10;-2 1 -10];b=[-30 50 -40];
Aeq=[3 1 -2];beq=20;
lb=zeros;
[x,f]=linprog(f,A,b,Aeq,beq,lb)

%%%%%%%%%%%%%%%%%%%%%%%%%
f=-[ 0 0 0 0 , 0 0 1.4 0 ,0 1.25 0 0,1.15 0 0 0,0 0 0 1.06];
Aeq=[1 0 0 1 , 0 0 0 0 ,0 0 0 0,0 0 0 0,0 0 0 0
    0 0 0 -1.06 , 1 0 1 1 ,0 0 0 0,0 0 0 0,0 0 0 0
    -1.15 0 0 0 , 0 0 0 -1.06 ,1 1 0 1,0 0 0 0,0 0 0 0
    0 0 0 0 , -1.15 0 0 0 ,0 0 0 -1.06,1 0 0 1,0 0 0 0
    0 0 0 0 , 0 0 0 0 ,-1.15 0 0 0 ,0 0 0 -1.06,0 0 0 1   ];
 beq=[10 0 0 0 0 ];
 lb=zeros(1,20);
 ub=[inf inf inf inf ,inf inf 3 inf ,inf 4 inf inf ,inf inf inf inf ,inf inf inf inf];
 [x,f]=linprog(f,[],[],Aeq,beq,lb,ub);
 x',-f