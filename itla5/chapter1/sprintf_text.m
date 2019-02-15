clc;
m = [ 1 ; 1 ]
n = [ 2 ; 3 ]
kk = 3 * v + 5 * w
quiver( 0, 0, kk( 1 ), kk( 2), 1 );

kk_x = sprintf('%f', kk( 1 ) );
kk_y = sprintf('%f', kk( 2 ) );
test_kk = sprintf('%s%s%s%s%s', '3m + 5n', '  ( ', kk_x, ', ', kk_y, ' )');
text( kk( 1 ) / 2, kk( 2 ) / 2, test_kk ); 
hold on