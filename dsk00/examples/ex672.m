%《MATLAB及其在理工课程中的应用指南》第六章例6－7－2程序
% 单色光的单缝衍射
% 西安电子科技大学出版社出版  陈怀琛编著 1999年10月初版，2004年11月第二版
%
clear;                                      % 清工作空间，输入波长，缝宽，和屏幕距离
Lambda = input('输入光的波长(单位为 nm): (书上取500) ');
Lambda = Lambda * 1e-9;   		            % 将nm换 变为 m
aWidth = input('输入缝宽 (单位为 mm): (书上取0.2或1或2) ');
aWidth = aWidth  * 0.001;  	                % 将mm 变换为 m
Z = input('输入缝到屏的距离 (单位为 m): (书上取1) ');
ymax = 3*Lambda*Z/aWidth;	                % 屏幕范围（沿y向）
Ny = 51;                                    % 屏幕上的点数（沿y向）
ys = linspace(-ymax,ymax,Ny);
NPoints = 51;                               % 缝上的点数（沿y向）
yPoint = linspace(-aWidth/2,aWidth/2,NPoints);   % 把缝上的点数设成数组
for j=1:Ny			                        % 对屏幕上y向各点作循环
    % 对光缝中各点作循环,计算缝点到屏幕位置的距离
    L = sqrt((ys(j)-yPoint).^2 + Z^2 );		% L是一个数组
    Phi = 2*pi.*(L-Z)./Lambda;              % 计算相对于屏幕中心的相位差,也是一个数组
    % 求每个分量的累加和
    SumCos = sum(cos(Phi)); 	            % 数组求和
    SumSin = sum(sin(Phi)); 
    % 求屏幕上的归一化光强;
    B(j) = (SumCos^2 + SumSin^2)/NPoints^2;  
end
plot(ys,B,'*',ys,B);grid	                % 屏幕上光强与位置的关系曲线
axis([-ymax, ymax, 0.0, 1.0]);
set(gcf,'color','w')                        % 置图形背景色为白色
