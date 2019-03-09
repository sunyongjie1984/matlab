function df = dfun( x );
f = fun( x );
df = [ diff( f, 'V1' ) diff( f, 'V2' ) diff( f, 'V3' )  diff( f, 'V4' )  diff( f, 'Ie' )  ]; %jacobi matrix
