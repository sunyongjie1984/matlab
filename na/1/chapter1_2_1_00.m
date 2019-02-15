% The real number r is a fixed point of the function g if g(r) = r
% The number r = 0.7390851332 is an approximate fixed point for the function g(x) = cosx.
% The function g(x) = x3has three fixed points, r = ???1,0, and 1.
% x = cos( x )
g = @ ( x ) cos( x )

% iteration steps 10
xc = fpi( g, 0, 10 ) 

% iteration steps 1000
xc = fpi( g, 0, 1000 ) 

% For example, the root-finding equation of Example 1.1
% x = x to the power of 3

% method 1 x = g( x ) = 1 - x ^ 3
% not converging, fixed-point iteration fails
g = @ ( x ) 1 - x .^ 3
xc = fpi( g, 0.5, 19 ) 

% method 2 is g(x) = ( 1 - x ) ^ ( 1 / 3 )
% This time FPI is successful. The iterates are apparently converging to
% a number near 0.6823.
g = @ ( x ) ( 1 - x ) .^ ( 1 / 3 )
xc = fpi( g, 0.5, 25 )

% method 3 is x = g( x ) = ( 1 + 2 * ( x ^ 3 ) ) / ( 1 + 3 * ( x ^ 2 ) ) 
% Here we have four correct digits after four iterations of 
% Fixed-Point Iteration, and many more correct digits soon after.
g = @ ( x ) ( 1 + 2 * ( x .^ 3 ) ) / ( 1 + 3 * ( x .^ 2 ) )
zx = fpi( g, 0.4, 10 )

x = [ 0: 0.01: 1 ];
y = 1 - x .^ 3;
plot( x, y, '-*' )
hold on;

x = [ 0: 0.01: 1 ];
y = ( 1 - x ) .^ ( 1 / 3 );
plot( x, y, '-*' )
hold on;

xx = [ 0: 0.01: 1 ];
% be carefull './' not '/'
yy = ( 1 + 2 * ( xx .^ 3 ) ) ./ ( 1 + 3 * ( xx .^ 2 ) );

plot( xx, yy, '-*' )
xx = [ 0: 0.01: 1 ];
% be carefull './' not '/'
yy = xx;

plot( xx, yy, '-.' )