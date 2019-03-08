A = [ 2 4 -2; 4 9 -3; -2 -3 7; ]
b = [ 2 8 10; ]

% compute L, U
[ L U ] = slu( A )

% slove x using A=LU
% call slu in the function slv
x = slv( A, b );
x = x'

