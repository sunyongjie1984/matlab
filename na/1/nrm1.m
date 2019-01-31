function [ xc ] = nrm1( f, x0, k )
%NRM Summary of this function goes here
%   Detailed explanation goes here
disp( 'function nrm1: ' );

% function nrm0 dont need this line
% function nrm1 do need this line
syms x

g = matlabFunction(diff(f(x)))

x = x0
for i = 1 : k
    x( i + 1 ) = x( i ) - f( x( i ) ) ./ g( x( i ) )
end
xc = x( k + 1 )

