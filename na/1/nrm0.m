function [ xc ] = nrm0( f, g, x0, k )
%NRM Summary of this function goes here
%   Detailed explanation goes here
disp( 'function nrm0: ' );
% function nrm0 dont need this line
%syms x
x = f( x0 )
for i = 1 : k
    x( i + 1 ) = x( i ) - f( x( i ) ) ./ g( x( i ) )
end
xc = x( k + 1 );

