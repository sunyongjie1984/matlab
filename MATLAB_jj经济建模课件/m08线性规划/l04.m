clear
a=[1.25	8.75	0.5	5.75	3	7.25]
b=[1.25	0.75	4.75	5	6.5	7.75]
r=[3	5	4	7	6	11]
x=[5	2]
y=[1	7]
q=[20	20]

k=1;
for i=1:6
    for j=1:2
        f(k)=((x(j)-a(i))^2+(y(j)-b(i))^2)^.5;
                   % w11 w12 w21 w22 w31 w32 w41...
        k=k+1;
        
        A(i,2*(i-1)+j)=-1;
                   % w11+ w12 w21+ w22 w31+ w32 w41...
        A(6+j,2*(i-1)+j)=1;
                   % w11+     w21+     w31+     w41...
    end
end
b=[-r q];
lb=zeros(length(f),1);
[x,fval]=linprog(f,A,b,[],[],lb)
