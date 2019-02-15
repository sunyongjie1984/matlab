syms x
format long
% function f
f = @( x ) x .^ 3 + x - 1

% cal nrm1
xc = nrm1( f, -0.7, 10 ) 
