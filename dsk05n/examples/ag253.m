%《线性代数实验践及MATLAB入门》第二章第五节演示程序三ag251
% 彩色和动画
% 电子工业出版社出版  陈怀琛 龚杰民合著 2005年10月

echo on,clf,axis equal, 	% 因为产生的图形是圆形,故把坐标设成相等比例
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
