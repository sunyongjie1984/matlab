Price=20;
Strike=20;
Rate=0.1;
Volatility=0.3;
%%
subplot(2,1,1)
t=1:-0.05:0;
Num=length(t);
PGNPrice=zeros(1,Num);
for i=1:Num;
    [Call, Put] = blsprice(Price, Strike, Rate, t(i), Volatility);
    PGNPrice(i)=1e4*(1.1)^(t(i)-1)+629.6758*Put;
end
plot(t,PGNPrice,'-*')
legend('PGNPrice,Price=20')
%%
t=0.5;
subplot(2,1,2)
Price=10:1:30;
Num=length(Price);
PGNPrice=zeros(1,Num);
for i=1:Num;
    [Call, Put] = blsprice(Price(i), Strike, Rate, t, Volatility);
     PGNPrice(i)=1e4*(1.1)^(t-1)+629.6758*Put;
end
plot(Price,  PGNPrice,'-o')
legend('PGNPrice,Time=0.5')