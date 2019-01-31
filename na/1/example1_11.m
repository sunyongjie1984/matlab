% function f
%f = @( x ) x .^ 3 + x - 1
% function of f'
%g0 = matlabFunction(diff(f(x)))
%xc = nrm( f, g0, -0.7, 10 ) 
% instead of the nrm, use the formula from the example 1.11
f = @( x ) (x .^ 3 + x - 1)
f = @( x ) cos(x)
g = matlabFunction(diff(f(x)))
% g0 = matlabFunction(diff(f(x)))
% x0 = -0.7;
% k = 10;
% x = f ( x0 );
% for i = 1 : k
%     x( i + 1 ) = ( ( 2 .* ( x( i ) .^ 3 ) + 1 ) ./ ( 3 .* ( x( i ) .^ 2 ) + 1 ) )
% end
% 
% xc = x( k + 1 )