function [ xc ] = nrm0( f, g, x0, k )

disp( 'enter function nrm0: ' );

% define one column vector with all zeros of k components
x = zeros( k + 1, 1 );

x( 1 ) = x0;
for i = 1 : k
    x( i + 1 ) = x( i ) - f( x( i ) ) / g( x( i ) );
end

display( x ) % print all x components

xc = x( k + 1 );

