
x = [ -10: 0.5: 10 ];

m = 1;
b = 0.5;
y = 0 * x
plot( x, y, '-bo' )
hold on;

y = [ -20: 5: 25 ];
x = 0 * y
plot( x, y, '-ro' )
hold on;

x = [ -10: 0.5: 10 ];

m = 1;
b = 0.5;
y = m * x + b;
plot( x, y, '-*' )
hold on;

m = 2
y = m * x + b;
plot( x, y, '-*' )
hold on;

legend(' y = 0 ', ' x = 0 ', ' y= x + 0.5', ' y = 2x+0.5' )
