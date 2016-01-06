%《MATLAB及其在理工课程中的应用指南》第八章例8－1－2程序
% 交流电路的稳态计算
% 西安电子科技大学出版社出版  陈怀琛编著 1999年10月初版，2004年11月第二版
%
R1=2;R2=3;R3=4;XL=2; XC1=3; XC2=5; 	        % 给出原始数据
us1=8, us2=6; us3=8; us4=15;		 	    % 给出原始数据
Y1=1/R1+1/(j*XL); 			                % 用复数表示各支路导纳
Y2=1/R2-1/(j*XC1);
Y3=1/R3-1/(j*XC2);
A=[Y1+Y2,-Y2;-Y2,Y2+Y3]; 		            % 按线性方程组列出ua,ub的系数矩阵
B=[us1/(j*XL)+us2/R1; us3/R3+us4/(-j*XC2)-us2/R2]; 	% 列出线性方程组右端
U=A\B;ua=U(1),ub=U(2) 				        % 求ua,ub
I1=ua*Y1,I2=(ub-ua)*Y2,I3=ub*Y3,		    % 求各支路的I 
I1R=ua/R1,I1L=ua/(j*XL),
I2R=(ub-ua)/R2,I2C=(ub-ua)/(-j*XC1),
I3R=ub/R3,I3C=ub/(-j*XC2),
hold off
H=compass([ua,ub,I1,I2,I3]);		        % 画相量图
set(H,'linewidth',2) 	                    % 改变相量图线宽
set(gcf,'color','w')                        % 置图形背景色为白色