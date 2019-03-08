col01 = [ 0.1 -0.1 0 0 0 ]';
col02 = [ -0.1 0.3 -0.1 0 0 ]';
col03 = [ 0 -0.1 0.2 -0.1 0]';
col04 = [ 0 0 -0.1 0.1 -1]';
col05 = [ 0 0 0 1 0 ]';
%col06 = [ 1 0 0 0 0 0 ]';
A = [ col01 col02 col03 col04 col05 ];

syms V1 V2 V3 V4 Ie
format long
% function f
g1 = 0.1
g2 = 0.1
g3 = 0.1
g4 = 0.1

f1 = @( V1, V2, V3, V4, Ie ) (V1-V2)*g1+(-10)
f2 = @( V1, V2, V3, V4, Ie ) (V2-V1)*g1+(V2-V3)*g2+(V2-0)*g3
f3 = @( V1, V2, V3, V4, Ie ) (V3-V2)*g2+(V3-V4)*g4
f4 = @( V1, V2, V3, V4, Ie ) (V4-V3)*g4+(-10)
f5 = @( V1, V2, V3, V4, Ie ) V4 - 10

xk = [ 0 0 0 0 0 ]'

f1(xk(1), xk(2), xk(3), xk(4), xk(5))
f2(xk(1), xk(2), xk(3), xk(4), xk(5))
f3(xk(1), xk(2), xk(3), xk(4), xk(5))
f4(xk(1), xk(2), xk(3), xk(4), xk(5))
f5(xk(1), xk(2), xk(3), xk(4), xk(5))

F = [f1 f2 f3 f4 f5 ];

% b = [ ]';
% x = A\b;
% r = rref(A);
% Ab = [ A b ]
% 
% rref_Ab = rref( Ab )
% 
% col001 = [ 0.05 0 0 0 -1 0 ]';
% col002 = [ 0 0.15 -0.05 -0.1 0 1]';
% col003 = [ 0 -0.05 0.05 0 1 0 ]';
% col004 = [ 0 -0.1 0 0.125 0 0 ]';
% col005 = [ -1.5 0 1 0.5 0 0 ]';
% col006 = [ 0 1 0 0 0 0 ]';
% bb = [ 0.9 -0.464 0 -0.05 0 0 ]';
% B = [ col001 col002 col003 col004 col005 col006];
% Bbb = [ B bb ]
% rref_Ab1 =rref( Bbb )
% k = rref_Ab1(:,7) + [ 2 2 2 2 0 0 ]'
% 
% x0 = [ 0 0 0 0 0 0 ]';
% 
% A = [ 8 -3 2;  4 11 -1; 6 3 12; ];
% b = [ 20;3;36];
% kk = A\b
% %[x, n] = jacobiYongjies(A, b, [0 0 0 ]', 1.0e-7, 30);
% 
% A = [ 0.15 -0.1 1; -0.1 0.2 0; 1 0 0;]
% b = [ 0 0 10 ]'
% Ab = [A b ]
% E1 = [ 1 0 0; 0 1 0; 1 0 1;];
% A
% A = E1 * A
% b = E1 * b
% 
% %[x, n] = jacobiYongjies(A, b, [10 5 -1 ]', 1.0e-7, 30);
% 
% %jacobiYongjies(A, b, x0, 0.001, 5)