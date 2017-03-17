(123*456^78)/(876*543^75);vpa(ans)
sin(pi/5)
asin(0.5)
log(2)

A=[1 1 1 1;1 1 -1 -1;1 -1 1 -1;1 -1 -1 1]
B=[  3    -1     3    -1    -1
    -1     3    -3     1     2
     1     1     3     3     2
     3     1     1    -1     0]
b=[1 2 0 3]'
A*b
C=B(:,1:4),A+C,A-C/3,A.*C
det(A),inv(A),rank(A)
[V,D]=eig(A)
det(A)*inv(A)

a=randn(1000);
b=abs(a)<3;
sum(b(:))/1000^2