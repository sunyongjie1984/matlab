function [ xc ] = nrm( g, x0, k )
%NRM Summary of this function goes here
%   Detailed explanation goes here

x( 1 ) = x0;
fg = diff( g, x )
fg( 3 )

for i = 1 : k
    %x( i + 1 ) = x( i ) - g( x( i ) ) ./ fg( x( i ) );
    n( i + 1 ) = n( i );


end
xc = n( k + 1 );
