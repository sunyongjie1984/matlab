format long
% A = [ 1 2 -1; 2 1 -2; -3 1 1; ]
% b = [ 3; 3; -6 ]

A = rand( 3, 3 )
b = rand( 3, 1 )

% A = [ 1 2 2; 4 8 9; 0 3 2; ]
% b = [ 1; 3; 1; ]
[ A b ] % augmented matrix

[ U, c ] = gaussEYongjies( A, b )

[ U c ] % new augmented matrix

x = gaussBSYongjies( U, c )

x_from_library = A\b

if ( x ~= x_from_library )
    error( 'my gauss errors in this case' )
end

