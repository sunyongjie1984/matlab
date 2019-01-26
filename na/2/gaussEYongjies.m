% gaussian elimination
function [ a, b ] = gaussEYongjies( a, b )

[ rowSize, ~ ] = size( a );
n = rowSize;
% loop columns j from 1 to n, setting all a[ :, j ] under a( j, j ) to 0
% j has two meanings, first, setting all a[ :, j ] under a( j, j ) to 0
% second in theloop, subtract row j from all other row
% j specify the column we are processing
for j = 1 : n - 1
    if abs( a( j, j ) ) < eps; % check the pivot
        error( 'zero pivot encountered' );
    end
    % loop rows i from j + 1 to n, when column j is equ al 2, then start from row 3
    % a( j, j ) is the pivot for column j
    for i = j + 1 : n
        % multiplier is change for every row by looping i
        mult = a( i, j ) / a( j, j ); 
        % need to process a( i, k ) k from j to n
        % for k = j + 1: n 
        for k = j : n % start from j, set a( i, j ) with 0, start from j + 1 is more efficient
            a( i, k ) = a( i, k ) - mult * a( j, k ); % do subtract from column j
        end
        % vector b
        b( i ) = b( i ) - mult * b( j );
    end
end

