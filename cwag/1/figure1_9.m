x2 = 5;
y2 = 5;
x1 = 2;
y1 = 2;

%function[ ] = plot_line( x1, y1, x2, y2 );
plot( [ x1, x2 ], [ y1, y2 ], 'r-' );
xlabel( 'x' );
ylabel( 'y' );

hold on;

a = 2;
b = 3;
r = 0.5;
t = linspace( 0, 2 * pi );
plot( r * cos( t ) + a, r * sin( t ) + b );