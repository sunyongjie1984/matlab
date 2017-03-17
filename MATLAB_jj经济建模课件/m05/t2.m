function f=tax2(t)
if t<=18000
    f=t*0.03;
elseif t<=54000
    f=t*0.1;
elseif t<=108000
    f=t*0.2;
elseif t<=420000
    f=t*0.25;
elseif t<=660000
    f=t*0.3;
elseif t<=960000
    f=t*0.35;
else
    f=t*0.45;
end