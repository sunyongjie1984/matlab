%《MATLAB及其在理工课程中的应用指南》第六章例6－1－2程序
% 多种单位换算
% 西安电子科技大学出版社出版  陈怀琛编著 1999年10月初版，2004年11月第二版
%
clear all; disp(' 长度单位换算程序') 
fprintf('长度单位: \n'); 		%@ 选择输入输出的单位
fprintf(' 1) 厘米   2) 米  3) 千米 4) 英寸 \n');
fprintf('  5) 英尺   6) 英哩  7) 市尺  8) 市里  \n');
InUnits = input('选择输入单位编号: ');
OutUnits = input('选择输出单位编号: ');
% 令各种单位对米的变换常数数组	ToMeter 
ToMeter = [0.01, 1.00, 1000.0, 0.0254, 0.3048, 1609.3, 1/3, 500 ];
FrmMeter= 1./ ToMeter; 		%反变换常数数组FrmMeter为ToMeter数组的倒数
Value = input('输入待变换的值(0为退出): '), 
while( Value ~= 0 ) 			
    ValueinM = Value*ToMeter(InUnits);	 %@ 把输入值变为米
    NewValue = ValueinM*FrmMeter(OutUnits);  %@ 把幂变为输出单位
    fprintf('变换后的值是 %g \n',NewValue);  		%@ 打印变换后的值
    Value = input('输入待变换的值(0为退出): '); 	%@ 提问下个输入值
end

