function df = dfun( x );
f = fun( x );
df = [ diff( f, 'x1' ) diff( f, 'x2' ) ]; %jacobi matrix
