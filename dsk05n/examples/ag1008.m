%《线性代数实践及MATLAB入门》第二版第十章例题程序ag1008
% 线性系统零输入响应问题
% 电子工业出版社出版  陈怀琛 龚杰民合著 2005年10月初版，2008年10月第二版
%
a=input('输入分母系数向量a=[a1,a2,...]= '); 
n=length(a)-1;
Y0=input('输入初始条件向量 Y0=[y0,Dy0,D2y0,...]= ');
p=roots(a);V=rot90(vander(p));c= V\Y0';
% 以下是计算并画出时间响应
dt=input('dt='); tf=input('tf= ')   % 输入时间数组的参数
t=0:dt:tf; y=zeros(1,length(t)); 		% 生成t向量和y初始向量
for k=1:n  y= y+c(k)*exp(p(k)*t);end % 将各分量叠加
plot(t,y),grid							% 绘图
