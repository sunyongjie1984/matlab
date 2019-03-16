syms x f( x )
format long
clc;
% function f
f( x ) = x .^ 3 + x - 1

% cal nrmYongjies02
xc = nrmYongjies02( f, -0.7, 10 )

% cal bisectYongjies
% need to investigate why can not converge to 0.6823789
%xc = bisectYongjies( f, 0.6, 0.8, 0.000001 )

%xc = nrmYongjies02( f, 5000, 30 )
