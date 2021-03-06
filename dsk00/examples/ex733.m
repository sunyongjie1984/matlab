%《MATLAB及其在理工课程中的应用指南》（第二版）第七章例7－3－3程序
% 二自由度无阻尼振动的传统建模和解耦求解程序
% 西安电子科技大学出版社出版  陈怀琛编著 1999年10月初版，2004年11月第二版
%
m1=1; m2=9; k1 = 4; k2=2; 			% 输入各原始参数
x0 = [1;0]; xd0 = [0;-1]; tf= 20; 
M = [m1,0;0,m2];                    % 构成参数矩阵
K = [k1+k2, -k2; -k2, k2]; 		
[u,L] = eig (K,M );					% 求广义特征向量和特征值
t=linspace(0,tf,101);x=zeros(2,101);% 时间分割和输出变量初始化
for s=1:2						    % 分别处理两个特征值
    alfa=sqrt(u(:,s)'*M*u(:,s));	% 解耦后的质量
    u(:,s)=u(:,s)/alfa;			    % 把特征向量[ui]归一化
    w(s)=sqrt(L(s,s));		        % 分别求对应于两个特征值的分量
    xt=u(:,s)*(u(:,s)'*M*x0*cos(w(s)*t)+u(:,s)'*M*xd0/w(s)*sin(w(s)*t));
    x=x+xt;					        % 把两个分量累加
end
for r=1:2			                % 绘图
    subplot(2,1,r)
    plot(t,x(r,:)),grid
end
set(gcf,'color','w')                % 置图形背景色为白色
