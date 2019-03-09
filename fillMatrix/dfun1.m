function df = dfun1( x );
f = fun1( x );
df = [ diff( f, 'u' ) diff( f, 'v' ) ]; %jacobi matrix
