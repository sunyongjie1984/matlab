%《MATLAB及其在理工课程中的应用指南》第八章例8－4－2程序a
% Smith阻抗圆图的绘制(复数绘图方法)
% 西安电子科技大学出版社出版  陈怀琛编著 1999年10月初版，2004年11月第二版
%
% 直接用复数绘制Smith圆图
p = logspace(-2,2);                 % 设定p向量取值范围
%q=logspace(-2,1,10);
q = [eps,0.05,0.10.2,0.5,1,2,5,10]; % 设定q向量取值范围
x=[-p,p];
for r = q
    g=(r+i*x-1)./(r+i*x+1);			% g对应于gamma=(z+1)/(z-1)
    plot(g),hold on
    set(gcf,'color','w')            % 置图形背景色为白色
    axis equal                      % x-y坐标等比例
end
r = p;
for x=[-q,q]
    g=(r+i*x-1)./(r+i*x+1);
    plot(g),hold on
    axis equal
end
plot([0 0],[-1.1 +1.1],'r')         % 画基准线
plot([-1.1 +1.1],[0 0],'r')         % 画基准线
grid, hold off
