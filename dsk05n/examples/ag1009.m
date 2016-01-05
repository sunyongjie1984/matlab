%《线性代数实践及MATLAB入门》第二版第十章例题程序ag1009
% 计算频谱用的DFT矩阵
% 电子工业出版社出版  陈怀琛 龚杰民合著 2005年10月初版，2008年10月第二版
%
xn=input('输入长度小于256的xn数组,例如[ones(1,64),zeros(1,192)]');
N=length(xn);
n = [0:1:N-1]; k = [0:1:N-1];   	% 设定n和k的行向量
WN = exp(-j*2*pi/N);         % 设定Wn因子
nk = n'*k;                   % 产生一个含nk值的N乘N维的整数矩阵
WNnk = WN .^ nk;           	% 求出W矩阵
Xk = xn * WNnk;			% 求出离散傅里叶级数系数
subplot(2,1,1),stem(xn,'.')
subplot(2,1,2),stem(abs(Xk),'.')