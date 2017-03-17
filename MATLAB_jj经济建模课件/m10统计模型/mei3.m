clc,clear
mei;
x10=1./x1
x11=[ones(size(x10)),x10]
y10=1./y1
[b,bint,r,rint,stats]=regress(y10,x11)
b1=1/b(1),b2=b(2)/b(1)