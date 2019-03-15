%%%Derivation procedure of the non-linear system solver

fx=F{i};
xj=x;

%function after the point

xj(j)=x(j)+epsilon/2;
y1=fx(xj);

%function before the point

xj(j)=x(j)-epsilon/2;
y0=fx(xj);

%Derive in the point

dFidxj(i,j)=(y1-y0)/epsilon;