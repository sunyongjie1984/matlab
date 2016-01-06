%《MATLAB及其在理工课程中的应用指南》第八章例8－2－3
% 绘制运算放大器电路的程序
% 西安电子科技大学出版社出版  陈怀琛编著 1999年10月初版，2004年11月第二版
%
axis([20,85,25,80]),axis off
line([50,50,65,50],[40,60,50,40])		    % 绘制运算放大器线路
line([20,30],[55,55])
line([40,50],[55,55])
line([60,75],[50,50])
line([60,60],[30,50])
t1=linspace(0,2*pi);
x1=60+4*cos(t1);y1=40+4*sin(t1);line(x1,y1)
%line([60,65,60,55,60],[45,40,35,40,45])    % 绘制45度方框
%line([60,60],[35,30])
line([57,63],[30,30],'linewidth',2)		    % 绘制地线
hold,plot(62,45,'+'),text(62,35,'-')
text(66,39,'A(U2-U1)')
text(45,57,'U1'),text(45,47,'U2')
line([50,50,60,60,50],[75,65,65,75,75])		% 绘制Z1,Z2方框
line([30,30,40,40,30],[60,50,50,60,60])
line([44,44,50],[55,70,70])
line([60,70,70],[70,70,50])
line([44,44,50],[35,45,45])
line([41,47],[35,35],'linewidth',2)		    % 绘制地线
hold on,plot(20,55,'o',75,50,'o')
text(20,51,'Ui'),text(75,55,'Uo')
text(53,70,'Z2')
text(33,55,'Z1')
plot(52,45,'+'),text(52,55,'-'),hold off
set(gcf,'color','w')                        % 置图形背景色为白色
