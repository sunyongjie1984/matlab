format long

syms x
f = @( x ) x .^ 3 + x - 1

g0 = matlabFunction( diff( f( x ) ) )

xc = nrm0( f, g0, -0.7, 10 )

