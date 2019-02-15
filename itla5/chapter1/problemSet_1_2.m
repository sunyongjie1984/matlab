hold on;

v = [ 4 ; 1 ]
w = [ -2 ; 2 ]
sum = v + w
minus = v + ( -w )

quiver( 0, 0, w( 1 ), w( 2 ), 1)
text( w( 1 ) / 2, w( 2 ) / 2, '  w = ( -2, 2 ) ' );

hold on
quiver( 0, 0, v( 1 ), v( 2 ), 1 )
text( v( 1 ) / 2, v( 2 ) / 2, '  v = ( 4, 1 ) ');
hold on
quiver( 0, 0, sum( 1 ), sum( 2 ), 1 )
text( sum( 1 ) / 2, sum( 2 ) / 2, ' ( v + w ) = ( 2, 3 )');
hold on
quiver( 0, 0, minus( 1 ), minus( 2 ), 1 )
text( minus( 1 ) / 2, minus( 2 ) / 2, '  ( v + ( -w ) ) = ( 6, -1 )');

hold on
quiver( v( 1 ), v( 2 ) , w( 1 ), w( 2 ) , 1, '--' )
text( ( v( 1 ) + w( 1 ) + v( 1 ) ) / 2, ( v( 2 ) + w( 2 ) + v( 2 ) ) / 2, '  w ');

hold on
% quiver( -1, 2, 4, 2, 1, '--' )
% text( 1, 3, '  v ');
% hold on
quiver( 0, 0, -w( 1 ), -w( 2 ), 1, '--' )
text( -w( 1 ) / 2, -w( 2 ) / 2, '  -w = ( 2, -2 ) ');
hold on 
% quiver( 4, 2, 1, -2, 1, '--' )
% text( 4.5, 1, '  -w ');
% hold on
quiver( -w( 1 ), -w( 2 ), v( 1 ), v( 2 ), 1, '--' )
text(( -w( 1 ) + v( 1 ) - w( 1 ) ) / 2, ( -w( 2 ) + v( 2 ) - w( 2 ) ) / 2, '  v ');
hold on

