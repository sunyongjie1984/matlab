clc,clear
t1
x=[ones(size(x1)),x1,x2,x2.^2,x1.*x2];
[b,bint,r,rint,stats]=regress(y,x)