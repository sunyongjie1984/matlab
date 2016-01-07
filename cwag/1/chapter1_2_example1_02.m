%
%clf,fplot('x.^3+10*x.^2-2*sin(x)-50',[-12, 5])
clf,fplot('x.^2-x-2',[-10, 10], 'm-o' )

hold on,grid
x0=input(' x0= x0 can be 1000 or -300 ');e=1;
while e>0.00001
   f= x0.^2-x0-2; % solve f(x0)
   g= 2.*x0 - 1; % solve derivative g(x0)
   xx=x0-f/g; % tangent method formula
   e=abs(xx-x0);x0=xx % precise control and set new value to x0
   plot(x0,0,'*'), pause(1) %darw new point in x axis
   set(gcf,'color','w')                                % set back ground white
end
