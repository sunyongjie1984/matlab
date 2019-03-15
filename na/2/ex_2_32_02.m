clear; clc
format long;
x0 = [ 1 2 ]'   % initial guess
xk = x0
eps = 0.000001;  % precision

syms F( u, v ) DF( u, v )
F(u, v) = [ - u ^ 3 + v; u ^ 2 + v ^ 2 - 1; ]
DF(u, v) = [ diff( F, u) diff( F, v ) ]

for i = 1 : 10
    F_xk  = double(F(xk(1),xk(2)))
    DF_xk = double( DF(xk(1), xk(2)))

    % DF * s = -F   --->  s = -1 * inv( DF ) * F
    %s = -df \ f
    %x = x0 - df \ f
    % ******** imp ******
    %s = -1 * inv( DF_xk ) * F_xk
    s = -1 * DF_xk \ F_xk % this is much faster than above formula
    xk1 = xk + s
    % ******** imp ******
    if( abs( xk1 - xk ) < eps )
        break;
    end
    xk = xk1 % update iteration result
end
disp( 'coordinate:' );
xk1
disp( 'iter:' );
i
