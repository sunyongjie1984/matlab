A = [ 1 2 -1; 2 1 -2; -3 1 1; ]
b = [ 3; 3; -6 ]
[ A b ] % augmented matrix

[ U, c ] = gaussEYongjies( A, b )

[ U c ] % new augmented matrix

x = gaussBSYongjies( U, c )