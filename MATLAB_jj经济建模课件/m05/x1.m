clear
pv=60000
n=25*12
r=0.01

p=pv*r/(1-1/(1+r)^n)

pv2=p*3;
for i=1:(25-3)*12*2
    pv2=pv2+p/2/(1+r/2)^i;
end
pv2

fv2=0;pv2=60000-3*p;
n2=log((fv2-p/r)/(pv2-p/r))/log(1+r)/12

fv2=0;pv2=60000;p=900;
n2=log((fv2-p/r)/(pv2-p/r))/log(1+r)/12