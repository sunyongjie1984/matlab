clc,clear,clf
n=30;
%x^2+y^2=z
k=0;
for i=0:1/n:1
    k=k+1;
    x(k,:)=linspace(-sqrt(i),sqrt(i),2*n+1);
    y(k,:)=real(sqrt(i-x(k,:).^2));
    z(k,:)=ones(1,2*n+1)*i;
end

x=[x -x];y=[y -y];
z=[z z];

surf(x,y,z)
%mesh(x,y,z)
%axis equal
%shading interp
%hidden off

