format long
x = [ 0.0: 0.01: 1.00 ];

y = x.^3 + x - 1;
subplot( 2, 2, 1 );
plot( x, y, '-*' )
hold on;

xlim = get(gca, 'Xlim')
subplot( 2, 2, 1 )
plot( xlim, [ 0, 0 ], 'm--' );
hold on;
% subplot( 2, 2, 2 )
x = [ 0.6: 0.01: 0.7 ];

y = x.^3 + x - 1;
subplot( 2, 2, 2 );
plot( x, y, '-*' )
hold on;

xlim = get(gca, 'Xlim')
subplot( 2, 2, 2 )
plot( xlim, [ 0, 0 ], 'm--' );
hold on;

% subplot( 2, 2, 3 )
x = [ 0.68: 0.001: 0.69 ];

y = x.^3 + x - 1;
subplot( 2, 2, 3 );
plot( x, y, '-*' )
hold on;

xlim = get(gca, 'Xlim')
subplot( 2, 2, 3 )
plot( xlim, [ 0, 0 ], 'm--' );
hold on;

f = @( x ) x ^ 3 + x - 1 % define a function
startPos = 0.0
endPos = 1.0
t = 0.001

%root = bisect( f, startPos, endPos, t )
%input('press any key to continue');


t = 0.00005 % different precision
%root = bisect( f, startPos, endPos, t )


root = bisectYongjies( f, startPos, endPos, t )
