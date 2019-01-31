syms x
% function f
f = @( x ) x .^ 3 + x - 1
% function handle g0
g0 = matlabFunction(diff(f(x)))
% cal nrm
xc = nrm0( f, g0, -0.7, 10 ) 

xc = nrm1( f, -0.7, 10 ) 
