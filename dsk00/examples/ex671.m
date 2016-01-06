%《MATLAB及其在理工课程中的应用指南》第六章例6－7－1程序
% 单色光的双缝干涉
% 西安电子科技大学出版社出版  陈怀琛编著 1999年10月初版，2004年11月第二版
%
clear; 
Lambda = input('输入光的波长(单位为 nm): (书上取500) ');
Lambda = Lambda * 1e-9;                 % 将nm换 变为 m
d = input('输入两个缝的间距 (单位为 mm): (书上取2) ');
d = d * 0.001;  				        % 将mm 变换为 m
Z = input('输入缝到屏的距离 (单位为 m): (书上取1) ');
yMax = 5*Lambda*Z/d; xs = yMax;         % 设定图案的y,x 向范围
Ny=101;ys = linspace(-yMax,yMax,Ny);    % y方向分成101点
for i=1:Ny			                    % 对屏上全部点进行循环计算
    % 计算第一和第二个光源到屏上各点的距离
    L1 = sqrt((ys(i)-d/2).^2 + Z^2 );
    L2 = sqrt((ys(i)+d/2).^2 + Z^2 );
    Phi = 2*pi*(L2-L1)/Lambda;          % 从距离差计算相位差
    B(i,:) = 4*cos(Phi/2).^2;           % 计算该点光强（设两束光强相同)
    % 若考虑光谱的非单色性,把前两句改为后四句
    %Nl=11; dL=linspace(-0.1,0.1,Nl);	% 设光谱相对宽度正负10%,
    %Lambda1=Lambda*(1+dL');			% 分11根谱线,波长为一个数组
    %Phi1 = 2*pi*(L2-L1)./Lambda1;      % 从距离差计算各波长的相位差
    %B(i,:) = sum(4*cos(Phi1/2).^2)/Nl; % 叠加各波长影响,计算光强
end
% 在屏上画出图象
% clf; figure(gcf);                     % 清图形窗，将它移到前面
NCLevels = 255;                         % 确定用的灰度等级
% 定标：使最大光强(4.0)对应于最大灰度级（白色）
Br = (B/4.0) * NCLevels;
subplot(1,4,1),image(xs,ys,Br);         % 画图象
colormap(gray(NCLevels));               % 用灰度级颜色图
subplot(1,4,2), plot(B(:),ys)           % 画出沿y 向的光强变化曲线
