clc,clear
t1
x11=[ones(size(x1)),x1]
[b,bint,r,rint,stats]=regress(y,x11)
x22=[ones(size(x2)),x2,x2.^2]
[b,bint,r,rint,stats]=regress(y,x22)