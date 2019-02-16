A = [ 1 2 3; 2 5 2; 6 -3 1; ]
x = [ 0 0 2 ]'
x = [ 0; 0; 2; ]

% matrix multiplication b = A * x
b = A * x

% row at a time
b = [ A( 1, : ) * x; A( 2, : ) * x; A( 3, : ) * x ]

% column at a time
b = x( 1 ) * A( :, 1)  + x( 2 ) * A( :, 2 ) + x( 3 ) * A( :, 3 )