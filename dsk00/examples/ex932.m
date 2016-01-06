%《MATLAB及其在理工课程中的应用指南》第九章例9－3－2程序
% 动态环节的串联,并联和反馈
% 西安电子科技大学出版社出版  陈怀琛编著 1999年10月初版，2004年11月第二版
%
fA = input('A环节的分子系数向量fA=(例如fA=[3,2,1]) ');	 % 输入环节参数
gA = input('A环节的分母系数向量gA=(例如gA=[5,4,7,3]) ');
fB = input('B环节的分子系数向量fB=(例如fB=[5,0]) ');	 % 
gB = input('B环节的分母系数向量gB=(例如gB=[9,8,1]) ');	 % 
Conn = menu(sprintf('连接方式'),  '串联', '并联', '反馈');% 图形界面菜单生成语句
switch Conn
case 1									                % 串联
   f = conv(fA,fB)
   g = conv(gA,gB)
case 2									                % 并联
   	f = polyadd(conv(fA,gB),conv(fB,gA))
	g = conv(gA,gB)
case 3									                % 反馈
   f = conv(fA,gB)
   g = polyadd(conv(fA,fB),conv(gA,gB))
otherwise
   disp('未输入确定的连接方式,程序无效')
end
