function f=jm(l,m,sigma)
f=m/(1-normcdf(l,m,sigma)+eps);