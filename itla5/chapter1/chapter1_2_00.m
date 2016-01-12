clc;
a = [ 2 0 ]
b = [ 2 2 ]
disp ( 'b'' ' );
b'
disp( 'c = a * b'' ' )
c = a * b'

disp( 'cosine = a * b'' / ( norm( a ) * norm( b ) )')
cosine = a * b' / ( norm( a ) * norm( b ) ) %consine pi / 4
angle = acos( cosine )
disp( 'cos( pi / 4 )' );
cosine = cos( pi / 4 ) %consine pi / 4
disp( 'pi / 4 :' );
pi / 4
angle = acos( cosine )
%clc;
v = [ 2 3 4 ]'
w = [ 1 1 1 ]'
u = 2 * v + 3 * w
v' * w
cosine = v'*w/(norm(v)*norm(w))
angle = acos(cosine)
