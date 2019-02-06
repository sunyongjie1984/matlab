subplot( 2, 2, 1 )
x = [ 0: 0.1: 1 ];
y = cos( x ) - x;
plot( x, y, '-*' )
hold on;

y = 0 .* x
plot( x, y, '-*' )
hold on;

subplot( 2, 2, 2 );
y = x;
plot( x, y, '-*' )

hold on;
y = cos( x );
plot( x, y, '-*' )