

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
% annotation('arrow', [0.45, 0.538], [0.35, 0.2], 'LineStyle','-','color',[ 1 0 0 ]);
% text( 0.5, -3.5, ' (0.5, -2.25) ');
% hold on;
% dim = [.3 .68 .2 .2 ];
% annotation('rectangle', dim, 'Color', 'red');

x = [ 0.47, 0.535 ]
y = [ 0.35, 0.215 ];
annotation( 'textarrow', x, y, 'String', ' x=0.5 y=-2.25 ', 'Color', 'Red');

x = [ 0.184, 0.2 ]
y = [ 0.255, 0.215 ];
annotation( 'textarrow', x, y, 'String', ' y=-2.25 ', 'Color', 'Blue');

x = [ 0.22, 0.154 ]
y = [ 0.85, 0.80 ];
annotation( 'textarrow', x, y, 'String', ' y = x^2 - x - 2 ');

x = [ 0.575, 0.481 ]
y = [ 0.35, 0.235 ];
annotation( 'textarrow', x, y, 'String', ' ( -1, 0 ), ( 2, 0 ) ');
x = [ 0.575, 0.59 ]
y = [ 0.35, 0.235 ];
annotation( 'textarrow', x, y, 'String', '');

x = [ 0.47, 0.535 ]
y = [ 0.85, 0.815 ];
annotation( 'textarrow', x, y, 'String', ' x=0.5', 'Color', 'Red');
