f=[14 12];
A=-[35 24];
b=-107;
lb=zeros(2,1);
[x,fval]=linprog(f,A,b,[],[],lb)

smin=1000;
for i=1:4
    for j=1:5
        s=14*i+14*j;
        if 35*i+24*j>=107&smin>s
            smin=s;
            x=[i,j];
        end
    end
end
x
smin