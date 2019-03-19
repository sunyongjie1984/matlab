function [ xc ] = nrmYongjies02( f, x0, k )
clf, fplot( f, [ -0.8, 1 ], 'linewidth', 2, '-')
hold on  grid

ylim = get(gca, 'Ylim')
plot( [ 0, 0 ], ylim, '-' );

hold on;
xlim = get(gca, 'Xlim')
plot( xlim, [ 0, 0 ], 'b-' );
hold on;
syms x
g(x) = diff( f( x ), x );

x = zeros( k + 1, 1 );
x( 1 ) = x0;
str = sprintf( '%.15f  %d', x( 1 ), 0);
text( 0.1, 0.9, str );
plot( x( 1 ), 0, '*' ), pause( 1 ), hold on
str = sprintf( '%.4f', x( 1 ) );
text( x( 1 ), 0.0001, str )
plot( x( 1 ), f( x( 1 ) ), '*' ), pause( 1 ), hold on
str = sprintf( '%.4f %.4f', x( 1 ), eval( f( x( 1 ) ) ) );
text( x( 1 ), eval( f( x( 1 ) ) ), str )

m = g( x( 1 ) )
syms z q( z )
q( z ) = f( x( 1 ) ) + m * ( z - x( 1 ) )

fplot( q, [ x( 1 ), 0.15 ], 'm--' ), hold on, pause( 1 )

for i = 1 : k
    x( i + 1 ) = x( i ) - f( x( i ) ) / g( x( i ) )
    str = sprintf('%.15f  %d', x( i + 1 ), i)
    text( 0.1, 0.9 - 0.05 .* i, str );
    plot( x( i + 1 ), 0, '*' ), pause( 1 )
    if i < 5
        str = sprintf( '%.4f', x( i + 1 ) );
        text( x( i + 1 ), 0.0001, str )
    end
    plot( x( i + 1 ), f( x( i + 1 ) ), '*' ), pause( 1 )
    if i < 5
        str = sprintf( '%.4f %.4f', x( i + 1 ), eval( f( x( i + 1 ) ) ) );
        text( x( i + 1 ), eval( f( x( i + 1 ) ) ), str )
    end
    set( gcf, 'color', 'w' ) % set back ground white
    m = g( x( i + 1 ) );
    q( z ) = f( x( i + 1 ) ) + m * ( z - x( i + 1 ) )
    %root = fzero( q, 0 )
    root = solve( q, z, 'Real', true )
    root = eval(root)

    if root > x( i + 1 )
        a = x( i + 1);
        b = root;
    else
        a = root;
        b = x( i + 1);
    end
    a = a - 0.02;
    b = b + 0.02;

    if 1 == i
        fplot( q, [ a , b ], 'm--' ), hold on, pause( 1 );
    elseif 2 == i
        fplot( q, [ a , b ], 'm--' ), hold on, pause( 1 );
    elseif 3 == i
        fplot( q, [ a , b ], 'm--' ), hold on, pause( 1 );
    elseif 4 == i
        fplot( q, [ a , b ], 'm--' ), hold on, pause( 1 );
    else
%         fplot( f, [ -0.8, 1 ], '-' )
%         hold on  grid
    end
end
        fplot( f, [ -0.8, 1 ], '-' )
        hold on  grid
x
xc = x( k + 1 )

