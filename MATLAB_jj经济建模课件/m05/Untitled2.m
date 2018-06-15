clear
pv=60000
n=25*12
r=0.01
p=pv*r/(1-1/(1+r)^n)

p0=3*p;i=1;
while p0<60000
    p0=p0+p/(1+r)^i;
    i=i+1;
end
p0,(i-1)/12