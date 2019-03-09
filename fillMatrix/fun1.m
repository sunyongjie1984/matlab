function f = fun1( x );

syms u v

f1 = -u ^ 3 + v;
f2 = u ^ 2 + v ^ 2 -1;

f = [ f1; f2 ];
