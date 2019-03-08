% cell
a = cell( 2, 2 )
b={'abc',[1,2,3];123,'a'}

b( 1, 2 )
b{ 1, 2 }( 1, 2 )
b{ 1, 2 }( 1, 3 )

u = [ 1; -1; 1; ]
v = [ 0; 1; -1; ]
w = [ 0; 0; 1;  ]
A = [ u v w ]
augmentA = [ A eye(3)]
C = inv( A ) * augmentA
E3 = eye(3)
column3 = E3(:,3)
% Ax=b when b is column3 wich if the 3rd column of eye(3)
% x is inv( A ) acts on column3
x = inv( A ) * column3


M = [ 4; pi ]
M = [ 4 pi; ]'
M = [ 4, pi ]'