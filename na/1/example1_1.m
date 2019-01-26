f = @( x ) x ^ 3 + x -1
startPos = 0.0
endPos = 1.0
t = 0.00005

root = bisect( f, startPos, endPos, t )

