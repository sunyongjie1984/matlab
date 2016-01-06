%《MATLAB及其在理工课程中的应用指南》第九章例9－4－1程序
% 偏微分方程的数值积分
% 西安电子科技大学出版社出版  陈怀琛编著 1999年10月初版，2004年11月第二版
%
%横截面为矩形的无限长加盖导体槽的电位
h=4; v0=100; hx=4*h+1;hy=3*h-2;
v1=zeros(hy,hx);v1(hy,:)=ones(1,hx)*v0;	                            % 设定电位零次近似值v1,盖上为v0,其余为0
% 置初值
v1(2:hy-1,2:hx-1)=ones(hy-2,hx-2)*v0/2;	                            % 并设离开边缘部分电位均为v0/2
v2=zeros(hy,hx);								                    % 初始化迭代结果变量v2
%---先由v1迭代运算求v2-------------------
for i=1:hy
    for j=1:hx
        if i==hy  v2(i,j)=v0;			                            % 盖上电位为v0
        elseif i==1|j==1|j==hx  v2(i,j)=0;	                        % 其余三边电位为0
        else  v2(i,j)=(v1(i,j-1)+v1(i,j+1)+v1(i-1,j)+v1(i+1,j))/4;  % 拉普拉斯方程
        end
    end
end
%---把v2代替v1,再由v1迭代运算求v2-------------------        
for k=1:500	                                                        % 迭代次数K
    v1=v2;
    for i=1:hy
        for j=1:hx
            if i==hy  v2(i,j)=v0;		                                % 盖上电位为v0
            elseif i==1|j==1|j==hx  v2(i,j)=0;	                        % 其余三边电位为0
            else  v2(i,j)=(v1(i,j-1)+v1(i,j+1)+v1(i-1,j)+v1(i+1,j))/4;  % 拉普拉斯方程
            end
        end  
    end
end
subplot(1,2,1),mesh(v2)				                                    % 绘制三维电位分布图
set(gcf,'color','w')                                                    % 置图形背景色为白色
axis([0,17,0,10,0,100])
subplot(1,2,2),contour(v2)			                                    % 绘制等位线图
grid

