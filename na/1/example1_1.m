f = @( x ) x ^ 3 + x -1 % define a function
startPos = 0.0
endPos = 1.0
t = 0.001

root = bisect( f, startPos, endPos, t )
input('press any key to continue');


t = 0.00005 % different precision
root = bisect( f, startPos, endPos, t )

