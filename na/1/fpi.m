%Program 1.2 Fixed-Point Iteration
%Computes approximate solution of g(x)=x
%Input: inline function g, starting guess x0, 
%       number of steps k
%Output: Approximate solution xc

function xc = fpi( g, x0, k )

x( 1 ) = x0;
for i = 1 : k
  x( i + 1 ) = g( x( i ) );
end

if k < 31
    x % print x, the size of x is 11
end

xc = x( k + 1 );
