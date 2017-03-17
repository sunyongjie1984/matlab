clc,clear
syms x
f1 =2*x^4+x^2+7*x-3
solve(f1, x)
vpa(solve(f1, x),4)

f2 ='2*x^4+x^2+7*x-3'
solve(f2)

solve('2*x^4+x^2+7*x=3')

%fsolve (f1, 0)  %
fsolve (f2, 0)
%fsolve('2*x^4+x^2+7*x-3=0')  %
fzero(f2, 0)
fsolve (f2, -10)
fzero(f2, -10)

g='tan(2*x)=sin(x)'
solve(g)
pretty(ans)
w=vpa(solve(g, x),4)

clf
ezplot('tan(2*x)',[-6,6])
hold on
fplot('sin(x)',[-6,6],'r')

k=1;
for x0=-6:6
    u(k)=fsolve('tan(2*x)-sin(x)',x0);
    k=k+1;
end
u

k=1;x=fsolve('tan(2*x)-sin(x)',-6);
for x0=-6:6
    v=fsolve('tan(2*x)-sin(x)',x0);
    if abs(x(k)-v)>0.0001
        k=k+1;
        x(k)=v;
    end
end
w,u,x