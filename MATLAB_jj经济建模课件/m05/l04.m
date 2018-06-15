n=100;
for i=1:n
    for j=1:n
        if i==j
            a(i,j)=1;
        elseif abs(i-j)==1
            a(i,j)=2;
        else
            a(i,j)=0;
        end
    end
end
a              