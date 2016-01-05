echo on
syms x y t a u v w q,pause
r = x^2 + y^2,pause
theta = atan(y/x) ,pause
e = exp(i*pi*t) ,pause
f = cos(x)^2 + sin(x)^2,pause
f = simple(f) ,pause
diff(x^3) ,pause
int(x^3) ,pause
int(exp(-t^2)) ,pause
[int(x^a), int(a^x), int(x^a,a),    int(a^x,a)] ,pause
x=solve('a*x^2 + b*x + c = 0') ,pause
[u,v] = solve('a*u^2 + v^2 = 0', 'u - v = 1') ,pause
digits(28) ,pause
[x,y]=solve('sin(x+y)-exp(x)*y = 0',  'x^2-y = 2') ,pause
syms x y a b c d e f
A=[a,b;c,d]
det(A),trace(A)
s1='a*x+b*y=e'
s2='c*x+d*y=f'
[x,y]=solve(s1,s2)
