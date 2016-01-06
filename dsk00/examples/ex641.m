%《MATLAB及其在理工课程中的应用指南》第六章例6－4－1程序
% 平面上N个电荷的库仑引力
% 西安电子科技大学出版社出版  陈怀琛编著 1999年10月初版，2004年11月第二版
%
clear all; 
N = input('输入电荷数目N= : ');
for ic=1:N				% 输入给定条件
   fprintf('----- \n  对电荷 #%g \n',ic);
   rc = input('输入电荷位置[x y](米) : ');
   x(ic) = rc(1);   % 电荷ic的x坐标
   y(ic) = rc(2);   % 电荷ic的y坐标
   q(ic) = input('输入电荷量(库仑): ');
end
E0 = 8.85e-12;    % 真空中的常数ε0 (C^2/(N m^2))
C0 = 1/(4*pi*E0);  % 合并常数
for ic = 1:N				% 计算每个电荷所受的力
   Fx = 0.0; Fy = 0.0; 	% 先把力初始化为零   
   for jc = 1:N				% 求其他电荷给它的力
      if( ic ~= jc )  		% 若电荷jc不是ic自身	
         % 计算两电荷间的距离
         xij = x(ic) - x(jc); yij = y(ic) - y(jc);
         Rij = sqrt(xij^2 + yij^2);		% 斜距
         % 用库仑定律计算此两电荷的引力的分量Fx,Fy
         Fx = Fx + C0*q(ic)*q(jc)*xij/Rij^3;
         Fy = Fy + C0*q(ic)*q(jc)*yij/Rij^3;
      end
   end
   fprintf('其他电荷作用在电荷 #%g 上的力为: \n',ic);	%显示结果
   fprintf(' x-分量: %g N \n',Fx);
   fprintf(' y-分量: %g N \n',Fy);
end
