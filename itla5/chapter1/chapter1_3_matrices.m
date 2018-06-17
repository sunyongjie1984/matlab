% 1 2
% 3 4
% 5 6
A = [ 1, 2; 3, 4; 5, 6; ]
x = [ 7; 8; ]

% 1
% 3
% 5
B = A(:,1)

b = A * x
% 23
% 53
% 83

u = [ 1; -1;  0; ]
v = [ 0; 1 ; -1; ]
w = [ 0; 0 ;  1; ]

% A is a difference matrix
% 1   0  0
% -1  1  0
% 0  -1  1
A = [ u v w ] % 
B = A'       % transpose
C = A^-1     % inverse
x = [ 1; 4; 9; ] 

% b
% 1
% 3
% 5

b = A * x

b = [ 0; 0; 0; ]
x = A^-1 * b

b = [ 1; 3; 5; ]
x = A^-1 * b
x = inv( A ) * b