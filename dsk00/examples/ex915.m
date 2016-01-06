%《MATLAB及其在理工课程中的应用指南》第九章例9－1－5程序
% 多级放大器特性与级数的关系
% 西安电子科技大学出版社出版  陈怀琛编著 1999年10月初版，2004年11月第二版
%
clear,clf, N=input('输入放大器级数N=（最大为5）');			 
w0=1000; dt=1e-4; tf=0.01;t = 0:dt:tf; 
y=zeros(N,length(t));				% 输出初始化
for n=1:N
    p0=-linspace(.95,1.05,n)*w0;	% 将H(s)极点分散布置
    ay = poly([p0,0]);	% 由Y(s)的极点（比H(s)多一个零极点）求分母系数
    by = prod(abs(p0));	% 求Y(s)的分子系数
    [r,p] = residue(by,ay);		% 求Y(s)的留数极点
    for k = 1: n+1						% 把各部分分式对应的时域分量相加
        y(n,:) = y(n,:) + r(k)*exp(p(k)*t);	
    end
    figure(1),plot(t, y(n,:));grid on,hold on		% 绘制过渡过程曲线
    set(gcf,'color','w')                        % 置图形背景色为白色
    % 下面这几条语句用来绘制波德图，在控制系统工具箱中有bode函数
    bh=by;ah= poly(p0);		% 求H(s)的分子分母系数
    w=logspace(2,4);				% 给出频率范围和分度
    H = polyval(bh,j*w)./polyval(ah,j*w); % 求H(s)在各频点的值H(jw)
    aH=unwrap(angle(H))*180/pi;		% 求出以度为单位的连续的相角
    fH=20*log10(abs(H));					% 求出以分贝为单位的振幅
    figure(2),
    set(gcf,'color','w')                        % 置图形背景色为白色
    subplot(2,1,1),semilogx(w,fH),grid on,hold on	% 绘幅频图
    subplot(2,1,2),semilogx(w,aH),grid on,hold on		% 绘相频图
end
hold off

