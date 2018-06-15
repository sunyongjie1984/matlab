clc,clear
p=[];k=0;
for i=0:2
    for j=0:3
        for k=0:5
            s=i*70+j*52+k*35;
            if s<=180 & 180-s<35
                p=[p [i;j;k;180-s]];
            end
        end
    end
end
p
f=ones(1,8);
A=-[2 1 3 1 0 0 0 0
    0 2 1 0 3 2 1 0
    1 0 1 3 0 2 3 5]
b=-[100 150 120]
lb=zeros(1,8);
ub=inf;
[x1,f1]=linprog(f,A,b,[],[],lb,ub)

%%%%%%%%%%%%%%%%%%%%分支定界
ub(3)=33;
[x2,f2]=linprog(f,A,b,[],[],lb,ub)

lb(3)=34;ub(3)=inf;
[x3,f3]=linprog(f,A,b,[],[],lb,ub)


