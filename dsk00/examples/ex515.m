%《MATLAB及其在理工课程中的应用指南》第五章例5－1－5程序
% 极限的定义和判别
% 西安电子科技大学出版社出版  陈怀琛编著 1999年10月初版，2004年11月第二版
%
disp('A是否是f(xc)的左极限?')	
A=input('A=,例如A=1'), 		                      % 输入极限值
xc=input('xc=,例如xc=0'),	                          % 输入对应的自变量值
fxc=input(' f(x)的表达式为,例如sin(x)/x','s'),		 % 输入函数表达式
flag=1;delta=1;x=xc-delta;n=1;					    % 初始化
while flag==1 epsilon=input('任给一个小的数ε=')			% 任意给出ε
    while abs(A-eval(fxc))>epsilon delta=delta/2;x=xc-delta;	% 找δ
        if abs(delta)< eps disp('找不到δ'),n=0;
            break	                              % 找不到δ，跳出内循环
        end,
    end
    if n==0 disp('左极限不正确'),
        break,
    end,	                                    % 左极限不正确, 跳出外循环
    disp('δ='),delta				           % 找到了δ,
    disp('左极限可能正确')
    flag=input('再试一个ε吗? 再试按 1 ，不试按0或任意数字键 '), % 再试？
end
