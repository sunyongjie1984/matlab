clf
syms   x   t					  			
y1='x^1'
y2='x^2'
y3='x^3'			
y4='x^4'		
ezplot(y1,[-1,1])
pause
ezplot(y2,[-1,1])
pause 
ezplot(y3,[-1,1])
pause
ezplot(y4,[-1,1])

pause

y5='sin(x)/x'
fplot(y5,[-10,10])
title('y5=sin(x)/x')