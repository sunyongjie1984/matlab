w = [ -1 ; 2 ] % define column vector w
v = [ 4  ; 2 ] % define column vector v
k = dot( w , v ) %  dot product

quiver( 0, 0, w( 1 ), w( 2 ), 0.98)
text( -0.5, 1, '  w = ( -1, 2 ) ' )

hold
quiver( 0, 0, v( 1 ), v( 2 ), 0.98)
text( 2, 1, '  v = ( 4, 2 ) ');


title('dot product','FontSize',12);
xlabel('x'); ylabel('y');
legend(' w ', ' v ')  




%%%%%%%%%%%%%%%%%%%%%%%%%%
clear;
clc;
A=[4,5];
B=[-10,0];
C=A+B;
M=[A;B;C];
X=[M(:,1);A(1)];
Y=[M(:,2);A(2)];
plot(X,Y,'r');
axis ([-12 6 -1 6])
grid on;
text(A(1),A(2),'A');
text(B(1)-0.2,B(2)-0.2,'B');
text(C(1),C(2)+0.2,'C');
scale=1;
hold on;
quiver(A(1),A(2),B(1)-A(1),B(2)-A(2),scale);
hold on;
quiver(B(1),B(2),C(1)-B(1),C(2)-B(2),scale);
hold on;
quiver(A(1),A(2),C(1)-A(1),C(2)-A(2),scale);
hold on;