%《MATLAB及其在理工课程中的应用指南》第六章例6－3－2程序
% 热力学过程及P-V图
% 西安电子科技大学出版社出版  陈怀琛编著 1999年10月初版，2004年11月第二版
%
% ex632 - 由P-V图计算热力学过程所做的功
clear all; % 变量初始化
figure,text(0.1,0.5,'请将图缩小,移至右上角'),pause,clf
nMoles = input('输入气体的摩尔数: ');
P(1) = input('输入初始压力(Pa): ');
V(1) = input('输入初始容积(m^3): ');
R = 8.314;                      % 气体常数 (J/摩尔)
T(1) = P(1)*V(1)/(nMoles*R);    % 初始温度
PPlot = P(1);                   % 记下初始压力以便绘图
VPlot = V(1);                   % 记下初始容积以便绘图
WTotal = 0;                     % 初始化做功值 (J)
iPoint = 1;                     % 初始点
NCurve = 100;                   % 画等温曲线用的点数
% 在菜单上选择quit之前不断循环
QuitType = 4;                   % 菜单上第四个选项是Quit
PathType = 0;                   % 进入循环时输入的哑元PathType的值
while(PathType ~= QuitType)    
    % 选择路径类型或退出
    iPoint = iPoint + 1;                                % 下一点
    fprintf('对过程 #%g \n',iPoint-1);
    PathType = menu(sprintf('过程 %g: 选择下一路径',iPoint-1), ...
        '等压', '等容', '等温','退出');				    % 图形界面菜单生成语句
    switch PathType
    case 1                                              % 等压路径	
        V(iPoint) = input('输入新容积: ');
        P(iPoint) = P(iPoint-1);                        % 压力不变
        T(iPoint) = P(iPoint)*V(iPoint)/(nMoles*R);     % 新温度
        W = P(iPoint)*( V(iPoint) - V(iPoint-1) );	    % 计算等压过程所做的功
        VPlot = [VPlot V(iPoint)];
        PPlot = [PPlot P(iPoint)];
        
    case 2                                              % 等容路径
        P(iPoint) = input('输入新压力: ');
        V(iPoint) = V(iPoint-1);
        T(iPoint) = P(iPoint)*V(iPoint)/(nMoles*R);
        W = 0;                                          % 等容路径上所做的功为零
        VPlot = [VPlot V(iPoint)];                      % 加上绘图的新容积和压力点       
        PPlot = [PPlot P(iPoint)];
        
    case 3                                              % 等温路径
        V(iPoint) = input('输入新容积: ');              %
        T(iPoint) = T(iPoint-1);						% 温度不变
        P(iPoint) = nMoles*R*T(iPoint)/V(iPoint);	    % 按新容积求新压力
        W = nMoles*R*T(iPoint)*log(V(iPoint)/V(iPoint-1));% 求等温路径所做的功
        % 用元素群运算求等温路径上的P和V,加进绘图数据中
        VNew = linspace(V(iPoint-1),V(iPoint) ,NCurve);
        PNew = nMoles*R*T(iPoint)./VNew;
        VPlot = [VPlot VNew];                           % 将新的V,P点加入绘图数据中
        PPlot = [PPlot PNew];      
    otherwise	
    end
    % 画出到目前为止的PV图
    if( PathType ~= QuitType )
        WTotal = WTotal + W;  		                    % 将新做的功加进总功
        figure(gcf);plot(V,P,'o',VPlot,PPlot,'-')
        set(gcf,'color','w')                            % 置图形背景色为白色
        axis([0 1.2*max(V) 0 1.2*max(P)]);              % 设定图面边界
        xlabel('V(m^3)');  ylabel('P(Pa)');
        for i=1:iPoint
            text(V(i),P(i),sprintf(' %g',i));           % 标出每一点
        end
        title(sprintf('新做功 = %g J, 总功 = %g J',W,WTotal) );
        drawnow;                                        % 立即画图
    end
end
WTotal
