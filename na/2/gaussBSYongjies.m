% gaussian back substitution
function x = gaussBSYongjies( U, c )

[ rowSize, ~ ] = size( U );
n = rowSize;
x = c;

for i = n : -1 : 1
    for j = i + 1 : n
        U( i ) = U( i ) - U( i, j ) * x( j );
    end
    x( i ) = c( i ) / U( i, i );
end
