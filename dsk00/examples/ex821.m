%《MAtLAB及其在理工课程中的应用指南》第八章例8－2－1程序
% 二极管特性的绘制和工作点的计算
% 西安电子科技大学出版社出版  陈怀琛编著 1999年10月初版，2004年11月第二版
%
% 二极管特性的绘制
K=1.38e-23;T=300;q=1.6e-019;
KT = K*T/q;
Is=10e-12;Ud=0:0.01:3.5;
Id=Is*(exp(Ud/KT)-1);                       % [毫安]
plot(Ud,Id),grid on
axis([0,max(Ud),0,100]),hold on
% 线路图的绘制
line([1.5,1.8],[76,76])
fill([1.8,2,2,1.8],[76,72,80,76],'K')
line([1.8,1.8],[72,80],'linewidth',2)
line([2,2.5],[76,76])
line([2.5,2.8,2.8,2.5,2.5],[74,74,78,78,74],'linewidth',2)
line([2.8,3.1],[76,76])
plot([1.5,2.2,3.1],[76,76,76],'o')
text(1.4,70,'0'),text(2.1,70,'Ud'),
text(2.6,68,'Rf'),text(3,70,'U0')
% 工作点的计算
U0=input('U0=[伏]'),
Rf=input('Rf=[欧姆]'),
Id1=1000*(U0-Ud)./Rf;                       % [毫安]
plot(Ud,[Id;Id1]),grid on
set(gcf,'color','w')                        % 置图形背景色为白色
[dI,nI]=min(abs(Id-Id1));
Udx=Ud(nI);Idx=Id1(nI);
disp('Udx,Idx= '),[Udx,Idx],hold off
legend('二极管特性及工作点确定')