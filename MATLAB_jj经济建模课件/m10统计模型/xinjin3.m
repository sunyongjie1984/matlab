clc,clear,clf
M=dlmread('xinjindata.m');

x1=M(:,3);x2=M(:,4);x3=M(:,6);x4=M(:,7);
y=M(:,2);
x5=x2.*x3;x6=x2.*x4;
x=[ones(size(x1)) x1 x2 x3 x4 x5 x6];
[b,bi,r,ri,s]=regress(y,x);
m=size(x1);
n=m(1);
s2=sum(r.^2)/(n-2);
b,bi,s,s2