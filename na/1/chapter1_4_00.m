syms x
format long
% function f
f = @( x ) x .^ 3 + x - 1
% function handle g0
g0 = matlabFunction(diff(f(x)))
% cal nrm0
xc = nrm0( f, g0, -0.7, 10 ) 

% cal nrm1
%xc = nrm1( f, -0.7, 10 ) 

% cal nrmYongjies02
xc = nrmYongjies02( f, 0.7, 10 )

% cal bisectYongjies
% need to investigate why can not converge to 0.6823789
xc = bisectYongjies( f, 0.6, 0.8, 0.000001 )

%xc = nrmYongjies02( f, 5000, 30 )
