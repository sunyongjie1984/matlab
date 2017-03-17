clc,clear
mei;
x20=1./x2
x21=[ones(size(x20)),x20]
y20=1./y2
[b,bint,r,rint,stats]=regress(y20,x21)
b1=1/b(1),b2=b(2)/b(1)