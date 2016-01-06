%《MATLAB及其在理工课程中的应用指南》第八章例8－3－3程序
% 感应电动机机械特性曲线绘制
% 西安电子科技大学出版社出版  陈怀琛编著 1999年10月初版，2004年11月第二版
%
clear, fvolt=50; 							% 电源频率【Hz】
r1 = 0.641; x1 = 1.106; z1 = r1 + j*x1;     % 定子相绕组电阻和电抗
r2 = 0.332; x2 = 0.464; z2 = r2 + j*x2;     % 转子等效电阻和电抗 
rm = 2.5; xm = 26.3; zm = rm + j*xm;        % 磁化支路激励损耗等价电阻和支路电抗
uph = 380 / sqrt(3);            % 相电压 ( v )
p=2; nsync = fvolt/p*60;        % 同步转速 (r/min)（p=2,双极电机）
wsync = nsync * 2*pi/ 60;       % 同步转速 (rad/s)
% 计算A,B两点之间电压uab和阻抗zab
uab = uph * zm/(z1+zm);
zab = zm * z1 / (z1+zm);
for r2 =[r2,2*r2]			    % 求两种内阻的电机转矩数组与转速数组关系
    s = (eps:1:50) / 50;  		% 转差率数组,第一点避开0
    nm = (1 - s) * nsync;        % 电机转速数组
    z2e = r2./s + j*x2;			% 转子等效负载
    I2e = uab ./(zab+z2e);		% 转子等效电流
    P2e = 3* abs(I2e.^2 * r2./s);		% 三相电磁功率总和
    torque = P2e / wsync;		% 转矩等于电磁功率除以同步转速% 画机械特性曲线
    plot(nm, torque ,'Color','r','LineWidth',2.0);
    hold on;
end
set(gcf,'color','w')            % 置图形背景色为白色
text(-100,190,'转矩'),text(1300,-5,'转速'),
text(500,195,'感应电机转矩转速特性'),
text(500,110,'r2'),text(250,150,'r2加倍')
grid on; hold off;

