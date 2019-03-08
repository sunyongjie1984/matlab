function f = fun( x );
%??????????
%??x1 x2
%??f1 f2
syms x1 x2
% f1 = sqrt((x1-4)^2 + x2^2)-sqrt(17);
% f2 = sqrt(x1^2 + (x2-4)^2)-5;
f1 = x2 - x1 ^ 3;
f2 = x1 ^ 2 + x2 ^ 2 -1;
f = [ f1 f2 ];
