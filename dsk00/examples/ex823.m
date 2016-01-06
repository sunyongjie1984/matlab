%《MATLAB及其在理工课程中的应用指南》第八章例8－2－3程序
% 运算放大器有限增益和频率响应对电路闭环特性的影响
% 西安电子科技大学出版社出版  陈怀琛编著 1999年10月初版，2004年11月第二版
%
Z2=[20,100,500]*1000; Z1=2000;	            % 设定元件参数
A0=input('A0= (书上取2e6) ');
w1=input('w1= (书上取50) ');
w2=input('w2= (书上取2e6) ');
w3=input('w3= (书上取5e7) ');
w=logspace(2,8);		                    % 设定频率数组
b=A0*w1*w2*w3; a=poly([-w1,-w2,-w3]);	    % 列出运算放大器分子分母系数向量
A=polyval(b,j*w)./polyval(a,j*w);	        % 求放大器开环频率响应
for i=1:3			                        % 循环计算三种Z2的闭环响应
   Z12(i)=Z2(i)/Z1;
   H(i,:)=-Z12(i)./(1+(1+Z12(i))./A);	    % 放大器闭环响应
   % Hdb=20*log10(abs(H));		            % 化为分贝
   semilogx(w,abs(H(i,:))),hold on	        % 画出频率-增益曲线
end
v=axis;axis(v);				                % 保持w坐标,
semilogx(w,abs(A))			                % 画出开环频率-增益响应
set(gcf,'color','w')                        % 置图形背景色为白色
grid,hold off