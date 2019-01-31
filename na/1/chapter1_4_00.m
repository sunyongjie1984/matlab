syms x
format long
% function f
f = @( x ) x .^ 3 + x - 1
% function handle g0
g0 = matlabFunction(diff(f(x)))
% cal nrm0
xc = nrm0( f, g0, -0.7, 10 ) 

% cal nrm1
xc = nrm1( f, -0.7, 10 ) 
