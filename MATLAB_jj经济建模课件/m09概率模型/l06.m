clc,clear
%L=input('L=');
%sigma=input('sigma=');
L=2,sigma=0.20,
m0=L/2;
m1=jm(L,m0,sigma);

for m=1:0.0001:4
    if m1>jm(L,m,sigma)
        m1=jm(L,m,sigma);
        m0=m;
    end
end
m0