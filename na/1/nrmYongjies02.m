function [ xc ] = nrmYongjies02( f, x0, k )
clf, fplot( f, [ -0.8, 1 ], 'm--' )
hold on  grid

syms x
g(x) = diff( f( x ), x );

x = zeros( k + 1, 1 );
x( 1 ) = x0;
str = sprintf( '%.15f  %d', x0, 0);
text( 0.1, 0.9, str );
plot( x0, 0, '*' ), pause( 1 )

for i = 1 : k
    x( i + 1 ) = x( i ) - f( x( i ) ) / g( x( i ) )
    str = sprintf('%.15f  %d', x( i + 1 ), i)
    text( 0.1, 0.9 - 0.05 .* i, str );
    plot( x( i + 1 ), 0, '*' ), pause( 1 )
    set( gcf, 'color', 'w' ) % set back ground white
end
x
xc = x( k + 1 )

