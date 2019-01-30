syms x
%g = @ ( x ) cos( x )
% g = @ ( x ) ( x.^2)
% f = @ ( x ) diff( g(x) )
% k = diff(g)
% pretty(ans)
% g (3 )
% A = [ 1 2 3; 2 3 4; 3 4 5; ]
% f ( 3)

% iteration steps 10
%xc = nrm( g, 0, 10 ) 
% x = [ 1 3 5 ]
% f = x.^2
% g = diff(f)
% k = diff(g)
% kk = 2
% g( kk )

f = @computeSquare;

m = integral(f, 0, 1)
n = matlabFunction(diff(f(x)))
n( 11 )