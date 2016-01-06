%《MATLAB及其在理工课程中的应用指南》第八章例8－1－7程序
% 交流电路频率响应计算
% 西安电子科技大学出版社出版  陈怀琛编著 1999年10月初版，2004年11月第二版
%
clear,dw=0.1;w=[.02:dw:20];s=j*w;us=1;      % 原始参数
r1=1;r2=2;C2=0.5;L=1;z21=s*L;
e=input('输入元件类型：电感，键入1；电容，键入2 (书上取1) ');
if e==1 L=input('输入电感量(H)(书上取1)  '); z21=s*L; 
elseif e==2 C1=input('输入电容量 (F) '); z21=1./(s*C1);
   else disp('元件类型错误，程序结束'),break,end
zc2=(1./s*C2);z22=r2+zc2;z2=z21.*z22./(z21+z22); % 串并联计算
uL=us.*z2./(r1+z2);		                    % 分压计算电感上的电压
uC2=uL.*zc2./z22;			                % 再分压计算电容上的电压
subplot(2,2,1),loglog(w,abs(uL));grid		% 绘图,注意subplot用法
subplot(2,2,3),semilogx(w,angle(uL));grid
subplot(2,2,2),loglog(w,abs(uC2)),grid
subplot(2,2,4),semilogx(w,angle(uC2)),grid
set(gcf,'color','w')                        % 置图形背景色为白色
