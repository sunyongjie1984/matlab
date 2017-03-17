clear,clc,data6
%%%%%%%%%%%%%%%%%%%%  1
1-normcdf(250,350,350)
poissinv(0.5,4)

binopdf(5,10,0.3)

k=10;
for i=1:10
    if 1-binocdf(4,k,0.3)>=0.5
        k
        break
    end
    k=k+1;
end
%%%%%%%%%%%%%%%%%%%%  2
for i=1:30
    E(i,:)=sum(B((i-1)*12+(1:12),:));
end
EE=mean(E)
[m,n]=max(EE)
[m,n]=min(EE)
[m,n]=max(std(EE))

[m,n]=find(B==max(B(:)))
y=fix((m-1)/12)+1981
mm=m-(y-1981)*12
%%%%%%%%%%%%%%%%%%%%  3
for i=1:12
    B1=B;B1(:,i)=[];
    [b,bint,r,rint,s(i,:)]=regress(B(:,i),[ones(size(B1,1),1),B1]);
end
s
[b,bint,r,rint,s]=regress(B(:,3),[ones(size(B1,1),1),B(:,[1,2,4:12])]);b,bint,s
[b,bint,r,rint,s]=regress(B(:,4),[ones(size(B1,1),1),B(:,[1:3,5:12])]);b,bint,s

[b,bint,r,rint,s]=regress(B(:,3),[ones(size(B1,1),1),B(:,[4:5])]);b,bint,s
[b,bint,r,rint,s]=regress(B(:,4),[ones(size(B1,1),1),B(:,[3,12])]);b,bint,s