%《MATLAB及其在理工课程中的应用指南》第五章例5－3－3程序
% 多项式的泰勒级数展开
% 西安电子科技大学出版社出版  陈怀琛编著 1999年10月初版，2004年11月第二版
%
% 多项式函数展开的泰勒公式
a=input('输入多项式系数向量a=（书上为[2,-3,4,5]) ');		% 输入参数
x0=input('输入展开点的坐标值x0=（书上为1) ');
[xm]=input('输入展开的坐标区间[xmin,xman]=（书上为[0,2]) ');
x=linspace(xm(1),xm(2));
y=polyval(a,x);ya=polyval(a,x0);			% 求y的准确值和y在x0点的值y(x0)
Da=polyder(a),Dya=polyval(Da,x0);			% 求x0点的各阶导数的值
D2a=polyder(Da),D2ya=polyval(D2a,x0);
D3a=polyder(D2a),D3ya=polyval(D3a,x0);
yt(1,:)=ya+Dya*(x-x0);							% 求y的各阶泰勒展开(最高到三阶)
yt(2,:)=yt(1,:)+D2ya*(x-x0).^2/prod(1:2);
yt(3,:)=yt(2,:)+D3ya*(x-x0).^3/prod(1:3);
plot(x,y,'.',x,yt(1:3,:)),grid					% 绘图,把四根曲线画在一起
set(gcf,'color','w')                            % 置图形背景色为白色
