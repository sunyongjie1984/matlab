%《MATLAB及其在理工课程中的应用指南》第七章例7－1－3调用的子程序
% 西安电子科技大学出版社出版  陈怀琛编著 1999年10月

function zprime=ex713f(t,z)
global vt vm
zprime=[0;0];	% 给出t0之前zprime初值(ode23需要)，丢掉后积分会无法进行。
zprime(1)=-vt-vm*z(1)/sqrt(z(1)^2+z(2)^2);
zprime(2)=-vm*z(2)/sqrt(z(1)^2+z(2)^2);
%上面两句可换成一个矩阵语句：zprime=-vt*[1;0]-vm*z/sqrt(z(1)^2+z(2)^2);
