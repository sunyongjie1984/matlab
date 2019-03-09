clear; clc
A = [ -3 1 ; 2 4; ];
n = [ 1; 4; ];
bb = inv(A) * n;
%format long;
x0 = [ 1 2 ]'   % initial guess

eps = 0.000001;  % precision
for i = 1 : 10
    f = double( subs( fun1( x0 ), { 'u' 'v'}, { x0( 1 ) x0( 2 ) } ) );
    df = double( subs( dfun1( x0 ), { 'u' 'v' }, {  x0( 1 ) x0( 2 ) } ) ); % get jacobi matrix
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
