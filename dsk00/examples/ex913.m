%《MATLAB及其在理工课程中的应用指南》第九章例9－1－3程序
% 阻尼系数对过渡函数的影响
% 西安电子科技大学出版社出版  陈怀琛编著 1999年10月初版，2004年11月第二版
%
% 冲击函数的一般求法
a=input('多项式分母系数向量a=(书上取 poly([0,-1,-2,-5]) ）  ')
b=input('多项式分子系数向量b=(书上取 [1,7,1] ）  ')
[r,p] = residue( b, a), 	                % 求留数
disp('解析式h(t)=Σr(i)*exp(p(i)*t)')
k=input('是否要求波形？是,键入1;否,键入0 ');
if k==1
   dt=input('dt=(书上取0.05) ');
   tf=input('tf=(书上取5  ');	             % 设定时间数组
   t=0:dt:tf;h=zeros(1,length(t)); 	        % h的初始化
   for i=1:length(a)-1 				        % 根数为a的长度减1
      h = h + r(i)*exp(p(i)*t); 	            % 叠加各根分量
   end
   plot(t,h),grid                           % 绘过渡函数曲线
else,
end
set(gcf,'color','w')                        % 置图形背景色为白色
