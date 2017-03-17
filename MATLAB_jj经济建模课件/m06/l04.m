clear,clc
syms x
f=x^2-4*x+3
g=x^2-1
f+g
f-g
f*g
f/g
f^2
compose(f,g)
finverse(g)

p='t^2'
q='t^2-1'
%p+q
symadd(p,q)
symsub(p,q) 
symmul(p,q)
symdiv(p,q)
sympow(p,q) 
symop(p,'+',q) 

f=sym('x^3+1+6*x*(x+1)') 
pretty(f)
simplify(f)
factor(f)
expand(f)
collect(f)
simple(f)



