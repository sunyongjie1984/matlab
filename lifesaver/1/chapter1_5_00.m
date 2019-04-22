
x = [ -10: 0.5: 10 ];

m = 1;
b = 0.5;
y = m * x + b;
hold on;
plot( x, y, '-*' )
m = 2
y = m * x + b;

plot( x, y, '-*' )
set(gca, 'XColor', 'red');
grid;
hold on;
set(gca, 'YColor', 'Blue');
grid;
hold on;

ylim = get(gca, 'Ylim')
plot( [ 0, 0 ], ylim, '-' );
hold on;
ylim = get(gca, 'Ylim')
plot( [ -0.5, -0.5 ], ylim, '--');
hold on;
xlim = get(gca, 'Xlim')
plot( xlim, [ 0, 0 ], '-' );
hold on;
xlim = get(gca, 'Xlim')
plot( xlim, [ -0.5, -0.5 ], '--' );
hold on;


legend(' y = 1 * x + 0.5 ', ' y = 2 * x + 0.5 ', ' x = 0 ', ' x = -0.5', ' y = 0 ', ' y = -0.5' )
