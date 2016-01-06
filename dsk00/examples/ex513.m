%《MATLAB及其在理工课程中的应用指南》第五章例5－1－3程序
% 参数方程，摆线的绘制
% 西安电子科技大学出版社出版  陈怀琛编著 1999年10月初版，2004年11月第二版
%
t=0:0.1:10;
r=1,R0=[1,0.7,1.5]
for k=1:3
    R=R0(k)
    x=r*t-R*sin(t);y=r-R*cos(t);
    plot(x,y),axis('equal'),grid on,hold on
    if k==1 text(3,2.2,'摆线')
    elseif k==2 text(3,1.3,'内摆线')
    elseif k==3 text(3,2.9,'外摆线')
    end
end
set(gcf,'color','w')                                % 置图形背景色为白色
