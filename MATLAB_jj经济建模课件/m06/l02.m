clear
f1=3*56-3^4
syms x,f2=exp(x^2)
f3=sym('exp(t^2)')
f4 = 'exp(x^2) '
f5 =inline( 'exp(x^2) ')



x=2*pi,t=2*pi
fv2=eval( f2 )
fv3=eval( f3 )
fv4=eval( f4 )
fv5=eval( f5 )

fv5=f5( f5 )
