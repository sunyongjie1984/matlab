%《MATLAB及其在理工课程中的应用指南》第八章例8－3－1程序
% 可控硅点火角与电压的关系
% 西安电子科技大学出版社出版  陈怀琛编著 1999年10月初版，2004年11月第二版
%
% 计算负载上得到的有效值电压与点火角(1 到 179 度)的函数关系,并画出曲线
wt = [1:180]*pi/180; 				            % 把半波分割为180份 
volts = 220 * sqrt(2) * sin(wt);		        % 完整的半波波形
for ii = 1:180				                    % 求不同点火角ii时的波形
    waveform = [zeros(1,ii-1),volts(ii:180)];   % 求不同点火角ii时的波形
    if ii == 45   waveform45 = waveform; 		% 记录点火角为45度时的波形
    elseif ii == 90    waveform90 = waveform; 	% 记录点火角为90度时的波形
    end
    temp = sum(waveform.^2); 		            % 计算各点波形的平方积分：
    rms(ii) = sqrt(temp/180); 	                % 计算积分的均方根：
end
% 画负载上的有效值电压与点火角关系曲线：
figure(1)
plot([1:180],rms,'Linewidth',2.0);
set(gcf,'color','w')                            % 置图形背景色为白色
legend('\bf负载电压有效值(V)');grid on;
gtext('\bf点火角（度)');pause

%画点火角45度时负载上的电压波形：
figure(2)
plot(wt,waveform45, 'Linewidth',2.0);
set(gcf,'color','w')                            % 置图形背景色为白色
grid on;
gtext('\bf\omega\itt\rm (弧度)');


