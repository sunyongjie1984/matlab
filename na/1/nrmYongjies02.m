function [ xc ] = nrmYongjies02( f, x0, k )
pauseTime = 3;
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

syms z q( z )

for i = 1 : k
    if 1 == i
        x( i ) = x0;
    else
        x( i ) = x( i - 1 ) - f( x( i - 1 ) ) / g( x( i - 1 ) )
    end
    str = sprintf('%.15f  %d', x( i ), i)
    text( 0.1, 0.9 - 0.05 * i, str ), pause( pauseTime )
    plot( x( i ), 0, '*' ), pause( pauseTime )
    if i < 50
        str = sprintf( '%.7f %d', x( i ), i );
        text( x( i ), 0.000, str ), pause( pauseTime )
    end
    plot( [x( i), x(i)], [0, f(x(i))], 'r'); hold on, pause( pauseTime )
    plot( x( i ), f( x( i ) ), '*' ), pause( pauseTime )
    if i < 50
        str = sprintf( '%.4f %.15f %d', x( i ), eval( f( x( i ) ) ), i );
        text( x( i ), eval( f( x( i ) ) ), str ), pause( pauseTime )
    end
    set( gcf, 'color', 'w' ) % set back ground white
    m = g( x( i ) );
    q( z ) = f( x( i ) ) + m * ( z - x( i ) )
    root = solve( q, z, 'Real', true ) % try to use function solve
    % the root can be calculated by the follwing, but now I just want to find the end of the tangent line
    %x( i ) = x( i - 1 ) - f( x( i - 1 ) ) / g( x( i - 1 ) )
    root = eval(root)
    if root > x( i )
        a = x( i );
        b = root;
    else
        a = root;
        b = x( i );
    end

    if i < 100 % draw all the tangent lines
        fplot( q, [ a - 0.05 , b + 0.05 ], 'm--' ), hold on, pause( pauseTime );

    end
end
        fplot( f, [ -0.8, 1 ], '-' )
        hold on  grid
x
xc = x( k + 1 )

