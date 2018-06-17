v = [ 1; 1; -1; ]
w = [ 2; 3; 4; ]
k = v + w 


quiver3( 0, 0, 0, v( 1 ), v( 2 ), v( 3 ), 1 )
text( 1, 1, -1, '  v = ( 1, 1, -1 ) ' );

hold

quiver3( 0, 0, 0, w( 1 ), w( 2 ), w( 3 ), 1 )
text( 2, 3, 4, '  w = ( 2, 3, 4 ) ' );

quiver3( 0, 0, 0, k( 1 ), k( 2 ), k( 3 ), 1 )
text( 3, 4, 3, '  k = ( 3, 4, 3 ) ' );


title('vectors in three dimensions','FontSize',12);
xlabel('x');
ylabel('y');
zlabel('z');
legend(' v ', ' w ', ' k = ( v + w ) ' )  