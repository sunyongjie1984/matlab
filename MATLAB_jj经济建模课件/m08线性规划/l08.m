f=[1 0 0 0];
Aeq=[0 -5/3 -4/5 1/2    
    -2/4 -1/3 1/5 0
    -3/4 1/3 0 0];
beq=[0 0 0];
lb=[1 0 0 0];
[x,fval]=linprog(f,[],[],Aeq,beq,lb)

nmin=100;
n=100;
for n1=1:n
    for n2=1:n
        for n3=1:n
            for n4=1:n
                if 1/2*n4==5/3*n2+4/5*n3& ...
                        1/5*n3==2/4*n1+1/3*n2& ...
                        1/3*n2==3/4*n1&n1<nmin
                                        
                    nmin=n1;
                    x=[n1 n2 n3 n4];
                end
            end    
        end
    end
end
nmin,x
[5	8	10	3
5	2	1	1
2	13	4	2]*x'
lcm(lcm(lcm(4,3),5),2)