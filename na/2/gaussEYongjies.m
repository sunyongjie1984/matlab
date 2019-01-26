% gaussian elimination
function [ a b ] = gaussEYongjies( a, b, n )

for j = 1 : n - 1
    if abs( a( j, j ) ) < eps;
        error( 'zero pivot encountered' );
    end
    for i = j + 1 : n
        mult = a( i, j ) / a( j, j );
        for k = 1 : j
            a( i, k ) = 0;
        end
        for k = j + 1 : n
            a( i, k ) = a( i, k ) - mult * a( j, k );
        end
        b( i ) = b( i ) - mult * b( j );
    end
end
b