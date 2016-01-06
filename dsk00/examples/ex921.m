%《MATLAB及其在理工课程中的应用指南》第九章例9－2－1程序
% 离散信号的MATLAB表述方法
% 西安电子科技大学出版社出版  陈怀琛编著 1999年10月初版，2004年11月第二版
%
clear,n0=0;nf=10;ns=3;
n1=n0:nf;x1=[zeros(1,ns-n0),1,zeros(1,nf-ns)];          % 单位脉冲序列的产生
% n1 = n0:nf; x1=[(n1-ns)==0]; 	                        % 显然,用逻辑式是比较高明的方法
n2=n0:nf;x2=[zeros(1,ns-n0),ones(1,nf-ns+1)];           % 单位阶跃序列的产生
% 也有类似的用逻辑比较语句的方法,留给读者思考
n3 = n0:nf; x3=(0.9).^n3;			                    % 实数指数序列
n4 = n0:nf; x4=exp((-0.2+0.5j)*n3);	                    % 复数指数序列
subplot(2,2,1),stem(n1,x1);title('单位脉冲序列')
set(gcf,'color','w')                                    % 置图形背景色为白色
subplot(2,2,2),stem(n2,x2);title('单位阶跃序列')
subplot(2,2,3),stem(n3,x3);title('实指数序列')
% 注意sunplot的输入变元
subplot(4,2,6),stem(n4,real(x4));line([0,10],[0,0])
title('复指数序列'),ylabel('实部')
subplot(4,2,8),stem(n4,imag(x4));line([0,10],[0,0]),	% 画横坐标
ylabel('虚部')