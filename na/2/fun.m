function f = fun( );
% define non linear equations
% define u v
% function f1 f2
% define two synbols
syms u v

% define expression
% define function
f1 = - u ^ 3 + v;
f2 = u ^ 2 + v ^ 2 -1;

f = [ f1;f2 ];
