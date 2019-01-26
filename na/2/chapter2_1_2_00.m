A = [ 1 2 -1; 2 1 -2; -3 1 1; ]
b = [ 3; 3; -6 ]

[ U, c ] = gaussEYongjies( A, b, 3 )

augmentedA = [ U c ]