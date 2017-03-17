clc,clear
%l=input('l=');
%sigma=input('sigma=');
l=2,sigma=0.20,
for i=1:100
    m=1.5+i*0.02; %1.5---3.5   
    m1(i)=m;
    f(i)=jm(l,m,sigma);
end
f
plot(m1,f,'r')