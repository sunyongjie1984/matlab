% do not Scientific notation( dont use 'ke xue ji shu fa' )
format long g
% the slope of g1at the fixed point is greater than one
g1 = @ ( x ) ( ( -3 .* x ) / 2 + 5 ./ 2 )
% The slope of g2is less than one
g2 = @ ( x ) ( ( -1 .* x ) / 2 + 3 ./ 2 )

xc = fpi( g1, 0.9, 20 )
xc = fpi( g2, 0.9, 20 )
