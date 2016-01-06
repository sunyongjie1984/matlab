%《MATLAB及其在理工课程中的应用指南》第八章例8－1－3程序
% 交流电路的稳态计算
% 西安电子科技大学出版社出版  陈怀琛编著 1999年10月初版，2004年11月第二版
%
z1=3*j;z2=5;z3=5/j;uc=10;
z23=z2*z3/(z2+z3);z=z1+z23;
Ic=uc/z3,Ir=uc/z2,I=Ic+Ir,ul=I*z1,us=I*z
disp('  	  Ir        Ic         I         ul         us  ')
disp('幅值'),disp(abs([Ir,Ic,I,ul,us]))
disp('相角'),disp(angle([Ir,Ic,I,ul,us])*180/pi)
% compass是MATLAB中绘制复数相量图的命令，用它画相量图特别方便。
ha=compass([Ir,Ic,I,ul,us]);            % 
set(ha,'linewidth',3)
set(gcf,'color','w')                    % 置图形背景色为白色
