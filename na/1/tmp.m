%syms x
f=@(x) x;
g = matlabFunction(diff(f(x)))