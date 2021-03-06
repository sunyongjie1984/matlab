x = 0 : 5
[ X, Y ]= meshgrid( x )
Z =2 * Y - X
mesh( X, Y, Z )

v = [ 1; 1; 1; ]
w = [ 2; 3; 4; ]
k = v + w
v1 = [ 1; 1; 10; ]

hold on;

quiver3( 0, 0, 0, v( 1 ), v( 2 ), v( 3 ), 1 )
text( v( 1 ), v( 2 ) , v( 3 ), '  v = ( 1, 1, 1 ) ' );
quiver3( 0, 0, 0, w( 1 ), w( 2 ), w( 3 ), 1 )
text( w( 1 ), w( 2 ), w( 3 ), '  w = ( 2, 3, 4 ) ' );
quiver3( 0, 0, 0, k( 1 ), k( 2 ), k( 3 ), 1 )
text( k( 1 ), k( 2 ), k( 3 ), '  k = ( 3, 4, 5 ) ' );

quiver3( 0, 0, 0, v1( 1 ), v1( 2 ), v1( 3 ), 1 )
text( v1( 1 ), v1( 2 ) , v1( 3 ), '  v1 = ( 1, 1, 10 ) ' );
