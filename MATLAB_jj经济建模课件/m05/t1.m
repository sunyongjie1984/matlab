function f=tax(x)
t=x-3500;
if t<=0
    f=0;
elseif t<=1500
    f=t*0.03;
elseif t<=4500
    f=45+(t-1500)*0.1;
elseif t<=9000
    f=345+(t-4500)*0.2;
elseif t<=35000
    f=1245+(t-9000)*0.25;
elseif t<=55000
    f=10125+(t-35000)*0.3;
elseif t<=80000
    f=16125+(t-55000)*0.35;
else
    f=23375+(t-80000)*0.45;
end