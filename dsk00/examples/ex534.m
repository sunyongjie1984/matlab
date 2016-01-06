%《MATLAB及其在理工课程中的应用指南》第五章例5－3－4程序
% 任意函数的泰勒级数展开
% 西安电子科技大学出版社出版  陈怀琛编著 1999年10月初版，2004年11月第二版
%
fxs=input('输入y=f(x)的表达式（书上为cos(x))','s');	% 输入原始条件,fxs是字符串
K=input('输入泰勒级数的展开阶数K=(书上为5) ');
a=input('展开的位置x0= (书上为0.5) ');
b=input('展开的区间半宽度b= (书上为2) ');
x=linspace(a-b,a+b);					% 构成自变量数组,确定其长度和步长
lx=length(x);dx=2*b/(lx-1);
y=eval(fxs);								% 求出y的准确值
subplot(1,2,1),plot(x,y,'.'),hold on	% y的准确曲线用点线绘出
% 求出a点一阶导数,注意求导后数组长度减小一
Dy=diff(y)/dx;Dya(1)=Dy(round((lx-1)/2));	
yt(1,:)=y(round(lx/2))+Dya(1)*(x-a); 	%求y的一阶泰勒展开,绘图
plot(x,yt(1,:))
set(gcf,'color','w')                                % 置图形背景色为白色
for k=2:K
   Dy=diff(y,k)/(dx^k);Dya(k)=Dy(round((lx-k)/2));	% 求出a点k阶导数
   yt(k,:)=yt(k-1,:)+Dya(k)/prod(1:k)*(x-a).^k;	% 求出y的k阶展开
   plot(x,yt(k,:)), 						% 绘图
   e(k,:)=y-yt(k,:);						% 求出yt的误差
end
title([fxs,'的各阶泰勒级数曲线']),			% 注意如何组成标注的字符串
grid, hold off, subplot(1,2,2)						
for k=1:K  plot(x,e(k,:)),hold on,end		% 绘制误差曲线
title([fxs,'的各阶泰勒级数误差']),grid, hold off
