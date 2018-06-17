w = [ -1 ; 2 ] % define column vector w
v = [ 4  ; 2 ] % define column vector v
k = dot( w , v ) %  dot product

quiver( 0, 0, w( 1 ), w( 2 ), 1)
text( -0.5, 1, '  w = ( -1, 2 ) ' )

hold
quiver( 0, 0, v( 1 ), v( 2 ), 1)
text( 2, 1, '  v = ( 4, 2 ) ');


title('dot product','FontSize',12);
xlabel('x'); ylabel('y');
legend(' w ', ' v ')  