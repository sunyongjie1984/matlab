function f = fun( x );
g1 = 0.1;
g2 = 0.1;
g3 = 0.1;
g4 = 0.1;

syms V1 V2 V3 V4 Ie

f1 = ( V1 - V2 ) * g1 + ( -10 );
f2 = ( V2 - V1 ) * g1 + ( V2 - V3 ) * g2 + ( V2 - 0 ) * g3;
f3 = ( V3 - V2 ) * g2 + ( V3 - V4 ) * g4;
f4 = ( V4 - V3 ) * g4 - Ie;
f5 = V4 - 10;



f = [ f1; f2; f3; f4; f5 ];
