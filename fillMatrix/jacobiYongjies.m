function [x,n] = jacobiYongjies(A,b,x0,eps,varargin)
nargin
if nargin ==3
    eps = 1.0e-6;
    M = 200;
elseif nargin<3
    disp('????????3?');
    return
elseif nargin ==5
    M = varargin{1};
end
D = diag(diag(A));%?A?????
L = -tril(A,-1);%?A??????
U = -triu(A,1);%?A??????
%B = D\(L+U);
inv(D)
B = inv(D)* (L+U);
f = inv(D) * b;
x = B*x0+f;
n = 1;%????
while norm(x-x0)>=eps
    x0 = x;
    x = B*x0+f
    n = n+1;
    if(n>=M)
        disp('Warning:??????,?????!')
        return;
    end
end