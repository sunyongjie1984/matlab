
x = [ -1: 0.02: 1 ];

m = 1;
b = 0.5;
y = sqrt(1 - x.^2);
y1 = -sqrt(1 - x.^2);


plot( x, y, '-*' )
hold on;
plot( x, y1, '-*' )
hold on;
y2 = 0 * x;
plot( x, y2, '-*' )



legend(' y = sqrt(1 - x.^2); ', 'y1 = -sqrt(1 - x.^2) ', ' y2 = 0 * x;')
