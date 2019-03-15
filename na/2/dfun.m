function df = dfun( );
f = fun( );
df = [ diff( f, 'u' ) diff( f, 'v' ) ]; %jacobi matrix
