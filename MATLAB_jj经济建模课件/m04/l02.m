clear,clc
B1=[1 7 2;1/7 1 1/4;1/2 4 1];
B2=[1 1/7 1/6;7 1 1/2;6 2 1];
B3=[1 1/5 1/4;5 1 1/2;4 2 1];
B4=[1 1/3 5;3 1 7;1/5 1/7 1];
A=[1 3 2 5;1/3 1 3 2;1/2 1/3 1 1;1/5 1/2 1 1];
%A=[1 2 3 4;1/2 1 2 2;1/3 1/2 1 1;1/4 1/2 1 1];
[v1,d1]=eig(B1),w1=v1(:,1)/sum(v1(:,1)),lambda1=d1(1,1)
[v2,d2]=eig(B2),w2=v2(:,1)/sum(v2(:,1)),lambda2=d2(1,1)
[v3,d3]=eig(B3),w3=v3(:,1)/sum(v3(:,1)),lambda3=d3(1,1)
[v4,d4]=eig(B4),w4=v4(:,1)/sum(v4(:,1)),lambda4=d4(1,1)
[v,d]=eig(A),w=v(:,1)/sum(v(:,1)),lambda=d(1,1)

ww=[w1 w2 w3 w4],lambda0=[lambda1 lambda2 lambda3 lambda4 ]

w0=ww*w

CI0=(lambda0-size(B1,1))/(size(B1,1)-1)
CR0=CI0/0.58

CI2=(lambda-size(A,1))/(size(A,1)-1)
CR2=CI2/0.96

CI3=CI0*w
CR3=CI3/0.58

CR=CR2+CR3

w(1)./w'
aa=[w w w w]./[w';w';w';w']