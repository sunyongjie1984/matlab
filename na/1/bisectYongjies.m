function [ xc ] = bisectYongjies( f, a, b, tol )
%BISECTYONGJIES Summary of this function goes here
%   Detailed explanation goes here
%clf, fplot('x.^2-x-2',[-10, 10], 'm--' )
clf, fplot(f,[0, 1], 'm--' )

hold on,grid
%x0=input(' x0= ,x0 can be 1000 or -300 ');e=1;
% while e>0.00001
%    f= x0.^2-x0-2; % solve f(x0)
%    g= 2.*x0 - 1; % solve derivative g(x0)
%    xx=x0-f/g; % tangent method formula
%    e=abs(xx-x0);x0=xx % precise control and set new value to x0
%    plot(x0,0,'*'), pause(1) %darw new point in x axis
%    set(gcf,'color','w')                                % set back ground white
% end




if sign( f( a ) ) * sign( f( b) ) >= 0
  error( 'f(a)f(b)<0 not satisfied!' ) %ceases execution
end
fa = f( a );
fb = f( b );

while (b-a)/2>tol
  c=(a+b)/2;

  fc=f(c);
  if fc == 0              %c is a solution, done
    break
  end
  c
  plot(c,0,'*'), pause(1) %darw new point in x axis
   set(gcf,'color','w')                                % set back ground white

  if sign(fc)*sign(fa)<0  %a and c make the new interval
    b=c;fb=fc;
  else                    %c and b make the new interval
    a=c;fa=fc;
  end
end
c
plot(c,0,'*'), pause(1) %darw new point in x axis
set(gcf,'color','w')                                % set back ground white

xc=(a+b)/2;               %new midpoint is best estimate


%
%clf,fplot('x.^3+10*x.^2-2*sin(x)-50',[-12, 5])

