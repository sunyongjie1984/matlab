%《MATLAB及其在理工课程中的应用指南》第九章例9－2－3程序
% 用矩阵乘法做离散付利叶变换
% 西安电子科技大学出版社出版  陈怀琛编著 1999年10月初版，2004年11月第二版
%
xn=input('x =（书上取 x=sin(0.1*[1:700])+randn(1,700) ) ');
N= (length(xn));				    % 取N为Nx
tic;n = [0:1:N-1];                  % n的行向量
k = [0:1:N-1];                      % k的行向量
WN = exp(-j*2*pi/N);                % Wn 因子
nk = n'*k;                          % 产生一个含nk值的N 乘 N维矩阵
WNnk = WN .^ nk;                    % DFT 矩阵
Xk = xn * WNnk;toc                  % DFT 系数的行向量
plot(k,abs(Xk)),grid on, pause
set(gcf,'color','w')                % 置图形背景色为白色
N=pow2(nextpow2(length(xn)));
tic,X=fft(xn,N);toc