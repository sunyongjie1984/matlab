clf
z=0:20;
R=(60*z).^(1/2);
[x,y,z]=cylinder(R,40)
surf(x,y,z)