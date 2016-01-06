%《MATLAB及其在理工课程中的应用指南》第七章例7－2－3程序
% 简支梁的变形计算
% 西安电子科技大学出版社出版  陈怀琛编著 1999年10月初版，2004年11月第二版
%
L=2; q=1000;  Mo=900;               % 输入已知参数L，Q，Mo，E，J
E=200e9;  J=2e-6;
Na =(3*q*L^2/8-Mo)/L; 
Nb = (q*L^2/8+Mo)/L;	            % 求支撑反力Na和Nb
x = linspace(0,L,101); dx = L/100;
M1 = Na*x(1:51)-q*x(1:51).^2/2;	    % 用数组分段列出M的表达式
M2 = Nb*(L-x(52:76)) - Mo;
M3 = Nb*(L-x(77:101));
M = [M1,M2,M3];		                % 列写完整的M数组
A0 = cumtrapz(M)*dx/(E*J);	        % 由M积分求转角（未计积分常数）
Y0 = cumtrapz(A0)*dx; 	            % 由转角积分求挠度（未计积分常数）
C=[0,1;L,1]\[-Y0(1);-Y0(101)];	    % 由边界条件求积分常数Ca,Cy
Ca = C(1), Cy = C(2),
A = A0+Ca; Y=Y0+Ca*x+Cy;	        % 求出转角与挠度的完整值
subplot(3,1,1),plot(x,M),grid		% 绘图
subplot(3,1,2),plot(x,A),grid
subplot(3,1,3),plot(x,Y),grid
set(gcf,'color','w')                % 置图形背景色为白色
