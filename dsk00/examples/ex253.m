%《MATLAB及其在理工课程中的应用指南》第二章第五节演示程序三(彩色和动画)
% 西安电子科技大学出版社出版  陈怀琛编著 1999年10月初版，2004年11月第二版
%
echo on,clf,axis equal, 	% 因为产生的图形是圆形,故把坐标设成相等比例
set(gcf,'color','w')            % 置图形背景色为白色
M = moviein(16);	% 为变量M预留16幅图的存储空间
for j=1:16 		% 作16次循环
	plot(fft(eye(j+16))); 	% 画图
	M(:,j)=getframe; 		% 依次存入M中
end
shg,movie(M,30)				% 作动画
[x,y]=meshgrid([-2:.2:2]); % 设定网格
z = x.*exp(-x.^2-y.^2);		% 凹凸曲面方程
pause,subplot(1,2,1),surf(x,y,z),colorbar,pause	% 彩色图按z坐标取
subplot(1,2,2),surf(x,y,z,abs(gradient(z))),colorbar,pause	% 彩色图按z的梯度取
