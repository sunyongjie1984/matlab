clear; clc
format long;
x0 = [ 1 2 ]'   % initial guess
xk = x0
eps = 0.000001;  % precision
for i = 1 : 10
    F_uv = fun( )
    DF_uv = dfun( )
    F_uv_xk  = double( subs( F_uv, { 'u' 'v' }, { xk( 1 ) xk( 2 ) } ) )
    DF_uv_xk = double( subs( DF_uv, { 'u' 'v' }, { xk( 1 ) xk( 2 ) } ) ) % get jacobi matrix
    % DF_uv * s = -F_uv   --->  s = -1 * inv( DF_uv ) * F_uv
    %s = -df \ f
    %x = x0 - df \ f
    % ******** imp ******
    s = -1 * inv( DF_uv_xk ) * F_uv_xk
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
