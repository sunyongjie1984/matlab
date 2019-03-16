
clf, fplot( 'x.^2-x-2', [ -10, 10 ], 'm--' )

hold on, grid
e = 1;
x0 = 200
while e > 0.00001
   f = x0 .^ 2 - x0 - 2; % solve f(x0)
   g = 2 .* x0 - 1; % solve derivative g(x0)
   xx = x0 - f/g; % tangent method formula
   e = abs( xx - x0 ); x0 = xx % precise control and set new value to x0
   plot( x0, 0, '*' ), pause( 1 ) %darw new point in x axis
   set( gcf, 'color', 'w' )                                % set back ground white
end

