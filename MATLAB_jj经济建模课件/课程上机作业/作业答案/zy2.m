clear,clc
%%%%%%%%%%
disp('****** 1 ******')
syms x t
factor(2*x^5 - x^4 + 6*x^2 - 7*x + 2)
limit(cos(x)^(1/x^2),x,0,'right')
diff(exp(-x^2),2)
int(t*exp(-2*t),0,+inf)

%%%%%%%%%%
disp('****** 2 ******')
syms x
solve(23*x^5+105*x^4-10*x^2+17*x)

dsolve('D2y-Dy+2*y=exp(x)','y(0)=0.5','Dy(0)=1','x')

%%%%%%%%%
disp('****** 3 ******')
%%%%%%%%%3
s=1;
for i=1:10
    s=s+2^i;
end
s

sum(2.^(0:10))
%%%%%%%%%%4
s=0;i=0;
while s+i+2<10000
    i=i+2; 
    s=s+i;     
end
%%
%%
%%
%%
i,s,sum(2:2:i)

s2=0;
for i=1:500
    if s2+i*2>10000
        break
    end
    s2=s2+i*2;
end
2*(i-1),s2

%%%%%%%%%%%%%5
A=[-1 1 1 1;-1 1 -1 -1;1 -1 1 -1;1 -1 -1 1]
det(A)
for i=1:4
    %%
    % *BOLD TEXT*
    for j=1:4
        Aij=A;Aij(i,:)=[];Aij(:,j)=[];
        Aban(j,i)=(-1)^(i+j)*det(Aij);
    end
end

%%%%%%%%%%%%%6
pv=100,p=3,n=5*12
for r=0.001:0.00001:1
   if abs(pv-p/r*(1-1/(1+r)^n))<0.1
       p/r*(1-1/(1+r)^n)
       pv-p/r*(1-1/(1+r)^n)
       break
   end
end
r=12*r  

v=pv*r/12;v(2,1)=3-v(1,1);v(3,1)=pv-v(2,1);
for i=2:27
    v(1,i)=v(3,i-1)*r/12;
    v(2,i)=3-v(1,i);
    v(3,i)=v(3,i-1)-v(2,i);
end
v        


        
        
        
