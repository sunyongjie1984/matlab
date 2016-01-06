%《MATLAB及其在理工课程中的应用指南》第八章例8－1－4程序
% 交流电路加多频信号
% 西安电子科技大学出版社出版  陈怀琛编著 1999年10月初版，2004年11月第二版
%
clear, format compact
w=[eps,1,2];us=[10,10,0];Is=[5,0,5];
z1=1./(0.5*w*j);z2=[2,2,2];z3=[2,2,2];z4=1*w*j;
uoc=(z2./(z1+z2)-z4./(z3+z4)).*us;
zeq=z3.*z4./(z3+z4)+z1.*z2./(z1+z2);
u=Is.*zeq+uoc;
disp('       w       um       phi  ')
disp([w',abs(u'),angle(u')*180/pi])
 