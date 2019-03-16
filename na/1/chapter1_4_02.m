% compare to function handle chapter1_4_03
% I prefer this one
clc;
format long;

syms f( x )

f( x ) = x ^ 3 + x - 1
df( x ) = diff( f( x ), x )

xc = nrm0( f, df, -0.7, 10 )
