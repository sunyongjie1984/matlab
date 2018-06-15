clc,clear
s=-2:.1:2;
[x,y]=meshgrid(s);
k1=0;
for i=s
    k1=k1+1;
    k2=0;
    for j=s
        k2=k2+1;
        if 4-i.^2-j.^2>=0
            z(k1,k2)=sqrt(4-i.^2-j.^2);
        else
            z(k1,k2)=NaN;
        end
    end
end
z0=z;
z=[];
x0=x;y0=y;

s=2:-.1:-2;
[x,y]=meshgrid(s);
k1=0;
for i=s
    k1=k1+1;
    k2=0;
    for j=s
        k2=k2+1;
        if 4-i.^2-j.^2>=0
            z(k1,k2)=-sqrt(4-i.^2-j.^2);
        else
            z(k1,k2)=NaN;
        end
    end
end
x1=(-2:.1:2)';y1=sqrt(4-x1.^2);z1=zeros(size(x1));
   
x=[x0,x,x1];y=[y0,y,y1];
z=[z0,z,z1];
surf(x,y,z)