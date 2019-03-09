clear; clc
%format long;
x0 = [ 0 0 0 0 0 ]'   % initial guess

eps = 0.000001;  % precision
for i = 1 : 10
    f = double( subs( fun( x0 ), { 'V1' 'V2' 'V3' 'V4' 'Ie' }, { x0( 1 ) x0( 2 ) x0( 3 ) x0( 4 ) x0( 5 ) } ) );
    df = double( subs( dfun( x0 ), { 'V1' 'V2' 'V3' 'V4' 'Ie' }, {  x0( 1 ) x0( 2 ) x0( 3 ) x0( 4 ) x0( 5 ) } ) ) % get jacobi matrix
    s = - df \ f
    x = x0 + s
    if( abs( x - x0 ) < eps )
        break;
    end
    x0 = x; % update iteration result
end
disp( 'coordinate:' );
x
disp( 'iter:' );
i
