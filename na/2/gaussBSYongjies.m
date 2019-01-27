% gaussian back substitution
function x = gaussBSYongjies( U, c )

[ rowSize, ~ ] = size( U );
n = rowSize;
x = c;
% when i == 3, solve x( 3 ):
% x( 3 ) = c( 3 ) / U( 3, 3 )
% when i == 2, slove x( 2 ):
% x( 2 ) = ( c( 2 ) - U( 2, 3 ) * x( 3 ) ) / U( 2, 2 )
% when i == 1, slove x( 1 ):
% x( 1 ) = ( c( 1 ) - U( 1, 2 ) * x( 2 ) ) - U( 1, 3 ) * x( 3 ) ) / U(1, 1)
for i = n : -1 : 1
    for j = i + 1 : 1 : n
         c( i ) = c( i ) - U( i, j ) * x( j );
    end
    x( i ) = c( i ) / U( i, i );
end
