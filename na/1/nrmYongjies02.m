function [ xc ] = nrmYongjies02( f, x0, k )
%BISECTYONGJIES Summary of this function goes here
%   Detailed explanation goes here
%clf, fplot( f, [ 0, 1 ], 'm--' )
clf, fplot( f, [ 0, 1 ], 'm--' )


hold on, grid

syms x
g = matlabFunction(diff(f(x)))


%x = x0
x = x0

for i = 1 : k
    x( i + 1 ) = x( i ) - f( x( i ) ) ./ g( x( i ) )
    str = sprintf('%.15f  %d', x( i + 1 ), i)
    text( 0.1, 0.9 - 0.05 .* i, str );
    plot( x( i + 1 ), 0, '*' ), pause( 1 ) %darw new point in x axis
    set( gcf, 'color', 'w' )                                % set back ground white
end
xc = x( k + 1 )
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


% if sign( f( a ) ) * sign( f( b) ) >= 0
%     error( 'f(a)f(b)<0 not satisfied!' ) %ceases execution
% end
% fa = f( a );
% fb = f( b );
% k = 0;
% while ( b - a ) / 2 > tol
%     c = ( a + b ) / 2;
%     fc = f( c );
%     if 0 == fc %c is a solution, done
%         str = sprintf('%.15f  %d', c, k)
%         text( a0, 0.9 - 0.05 .* k, str );
%         plot( c, 0, '*' ), pause( 1 ) %darw new point in x axis
%         set( gcf, 'color', 'w' )                                % set back ground white
%         break
%     end
%     str = sprintf('%.15f %d', c, k)
%     text( a0, 0.9 - 0.05 .* k, str );
%     k = k + 1;
% 
%     plot(c,0,'*'), pause(1) %darw new point in x axis
%     set(gcf,'color','w')                                % set back ground white
% 
%     if sign( fc ) * sign( fa ) < 0  %a and c make the new interval
%         b = c; fb = fc;
%     else                    %c and b make the new interval
%         a = c; fa = fc;
%     end
%     xc = ( a + b ) / 2;               %new midpoint is best estimate
% end
% 
% str = sprintf( '%.15f  %d', xc, k )
% text( a0, 0.9 - 0.05 .* k, str )
% plot( xc, 0, '*' ), pause( 1 ) %darw new point in x axis


%
%clf,fplot('x.^3+10*x.^2-2*sin(x)-50',[-12, 5])

