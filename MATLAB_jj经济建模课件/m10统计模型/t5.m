y1=7.8141+2.6652*x1
figure(1)
plot(x1,y1)
hold on
plot(x1,y,'*r')
hold off
figure(2)
plot(x2,y,'*r')
hold on
x0=5:0.1:7.5
y2=25.1091-6.5589*x0+0.6101*x0.^2
plot(x0,y2)
hold off