clf
[x,y]=meshgrid(-20:0.5:20);
z2=sqrt(x.^2+y.^2);
surfc(x,y,z2);
title('×¶Ãæ');
shading interp
axis off
