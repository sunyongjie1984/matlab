function f = fun( x );
% define non linear equations
% define x1 x2
% function f1 f2
syms x1 x2

f1 = x2 - x1 ^ 3;
f2 = x1 ^ 2 + x2 ^ 2 -1;

f = [ f1;f2 ];
