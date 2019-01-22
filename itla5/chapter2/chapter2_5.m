K = [ 2 -1 0; -1 2 -1; 0 -1 2; ]
I = eye( 3 ) %define the n by n identity matrix
R = rref( [ K I ] ) % eliminate on te augmented matrix [ A I ]
n = 3
X = R( :, n + 1: n + n ) % pick X = A inverse the last n columns of R