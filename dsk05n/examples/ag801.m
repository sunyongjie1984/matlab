%《线性代数实验践及MATLAB入门》第八章例题程序ag801
% 平面上向量的绘制
% 电子工业出版社出版  陈怀琛 龚杰民合著 2005年10月
%
u=[2;4]; v=[3;-1];
plot([2,3],[4,-1],'x');hold on
drawvec(u);hold on			% drawvec是ATLAST中的子程序
drawvec(v,'g');hold off
grid on
set(gcf,'color','w')