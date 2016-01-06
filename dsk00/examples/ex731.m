%《MATLAB及其在理工课程中的应用指南》第七章例7－3－1程序
% 阻尼系数对单自由度振动的影响
% 西安电子科技大学出版社出版  陈怀琛编著 1999年10月初版，2004年11月第二版
%
clear,wn=10;tf=2;
for i=1:2
    if i==1 x0=1;v0=0; else x0=0;v0=1;end
    for j=1:10
        zeta(j)=0.1*j;					                    % 对不同的ζ
        wd(j)=wn*sqrt(1-zeta(j)^2); 		                % 求wd
        a=sqrt((wn*x0*zeta(j)+v0)^2+(x0*wd(j))^2)/wd(j); 	% 求振幅A 
        phi=atan2(wd(j)*x0,v0+zeta(j)*wn*x0); 	            % 用atan2是为了求四象限相角
        t=0:tf/1000:tf;				                        % 设定自变量数组
        x(j,:)=a*exp(-zeta(j)*wn*t).*sin(wd(j)*t+phi); 	    % 求过渡过程
    end
    subplot(1,2,i),plot(t,x(1,:), t,x(2,:), t,x(3,:), t,x(4,:), t,x(5,:),...	% 绘图
        t,x(6,:), t,x(7,:), t,x(8,:), t,x(9,:), t,x(10,:))
    set(gcf,'color','w')                                    % 置图形背景色为白色
    grid on,pause
end
figure(2),mesh(x)                                           % 画三维图
set(gcf,'color','w'),pause,                                 % 置图形背景色为白色                            
