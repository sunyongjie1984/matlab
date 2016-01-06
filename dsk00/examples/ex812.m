%《MATLAB及其在理工课程中的应用指南》第八章例8－1－2程序
% 直流电路的暂态计算
% 西安电子科技大学出版社出版  陈怀琛编著 1999年10月初版，2004年11月第二版
%
% 电路暂态
r1=3;us=18;is=3;r2=12;r3=6;C=1;	        % 给出原始数据
uc0=-12;ir20=uc0/r2;ir30=uc0/r3; 	    % 算出初值
ic0=is-ir20-ir30;
ir2f=is*r3/(r2+r3); 			        % 算出终值
ir3f=is*r2/(r2+r3);
ucf=ir2f*r2; icf=0; 					
t=[[-2:0]-eps,0:15];			        % 注意时间数组的设置，在t=0附近设两个点
uc(1:3)=-12;ir2(1:3)=is;			    % t<0时的值
T = r2*r3/(r2+r3)*C;			        % 求充电时常数	
uc(4:19)=ucf+(uc0-ucf)*exp(-t(4:19)/T);	%
ir2(4:19)=ir2f+(ir20-ir2f)*exp(-t(4:19)/T);	% 用三要素法求输出
subplot(2,1,1);h1=plot(t,uc),		    % 绘uc图
grid,set(h1,'linewidth',2)				% 加大线宽
text(-2,15,'uc'),
subplot(2,1,2),h2=plot(t,ir2);		    % 绘ir2图
grid,set(h2,'linewidth',2)
text(-2,2.5,'ir2')                      % 标注
set(gcf,'color','w')                    % 置图形背景色为白色