format long

f = @( x ) cos( x ) - x % define a function
startPos = 0.0
endPos = 1.0


t = 0.000001

root = bisectYongjies( f, startPos, endPos, t )

% call nrm
%root = nrmYongjies02( f, 0.5, 10 )

