%《MATLAB及其在理工课程中的应用指南》第九章例9－1－7程序
% 方波经过低通滤波器后恢复
% 西安电子科技大学出版社出版  陈怀琛编著 1999年10月初版，2004年11月第二版
%
%连续信号的付利叶分析
%设已知信号的时域波形f(t),则其付利叶变换可表为
clear,tf=10; N=256;
t = linspace(0,tf,N); 	% 给出时间分割
w1 = linspace(eps,20,N);dw =20/(N-1);
f =[ones(1,N/2),zeros(1,N/2)]; 	    % 给出信号（此处是方波）
F1 = f*exp(-j*t'*w1)*tf/(N-1);		% 求付利叶变换
w = [-fliplr(w1),w1(2:N)]; 		    % 补上负频率
F = [fliplr(F1),F1(2:N)]; 		    % 补上负频率区的频谱
w2 = w(N/2:3*N/2);				    % 取出中段频率
F2 = F(N/2:3*N/2);			 	    % 取出中段频谱
subplot(1,2,1),plot(w,abs(F),'linewidth',1.5),grid
set(gcf,'color','w')                % 置图形背景色为白色
f1=F2*exp(j*w2'*t)/pi*dw; 			% 对中段频谱求付利叶逆变换
subplot(1,2,2),plot(t,f,t,f1,'linewidth',1.5),grid
