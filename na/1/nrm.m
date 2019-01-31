function [ xc ] = nrm( f, g, x0, k )
%NRM Summary of this function goes here
%   Detailed explanation goes here
x = f( x0 )
for i = 1 : k
    x( i + 1 ) = x( i ) - f( x( i ) ) ./ g( x( i ) );
end
xc = x( k + 1 )
% g = @nrm;
% %x( 1 ) = x0;
% n = matlabFunction(diff(g(x)))
% %n( pi / 3 );
% % for i = 1 : k
% %     %x( i + 1 ) = x( i ) - g( xf( i ) ) ./ fg( x( i ) );
% %     n( i + 1 ) = n( i );
% % 
% % 
% % end
% % xc = n( k + 1 );
