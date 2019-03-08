clear; clc
format long;
x0 = [ 1 2 ]   % ?????
eps = 0.000001;  % ??????
for i = 1 : 10
    f = double( subs( fun( x0 ), { 'x1' 'x2' }, { x0( 1 ) x0( 2 ) } ) );
    df = double( subs( dfun( x0 ), { 'x1' 'x2' }, { x0( 1 ) x0( 2 ) } ) );  % ???????
    x = x0 - f / df
    if( abs( x - x0 ) < eps )
        break;
    end
    x0 = x; % ??????
end
disp( 'coordinate:' );
x
disp( 'iter:' );
i
