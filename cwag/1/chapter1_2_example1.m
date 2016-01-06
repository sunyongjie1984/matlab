

%x_axis

x = [ -10: 0.5: 10 ];

y = x.^2 - x - 2;

plot( x, y, '-*' )
%axis off;
%axis tight;
%axis equal;

%axis([ -100, 100, -100, 100 ] )
set(gca, 'XColor', 'red');
grid;
hold on;

ylim = get(gca, 'Ylim')
%plot( [ 0, 0 ], ylim, 'm--' );
plot( [ 0, 0 ], ylim, '-' );

hold on;
ylim = get(gca, 'Ylim')
plot( [ 0.5, 0.5 ], ylim, 'm--' );
hold on;
xlim = get(gca, 'Xlim')
%plot( [ 0, 0 ], xlim, 'm--' );
plot( xlim, [ 0, 0 ], 'b-' );
hold on;
xlim = get(gca, 'Xlim')
plot( xlim, [ -2.25, -2.25 ], 'm--' );
hold on;
annotation('arrow', [0.5, 0.5], [0.6, 0.6], 'LineStyle','-','color',[ 1 0 0 ]);
text( 0.5, -3.5, ' (0.5, -2.25) ');
hold on;
