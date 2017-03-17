function [mint,k1]=tax3(x)
%x月收入mint月纳税额k1拿到年终
k=0;
mint=t1(x);
k1=0;
while k<x
    d1=t1(x-k)+(t2(12*k)/12);    
    if mint>d1
        mint=d1;
        k1=k;
    end
    k=k+1;
end

%t1(10564-1999)+t2(1999*12)/12
%t1(10564-2000)+t2(2000*12)/12
%t1(10564-2001)+t2(2001*12)/12

%[mint,k1]=t3(2500)