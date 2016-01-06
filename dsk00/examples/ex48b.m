%《MATLAB及其在理工课程中的应用指南》第四章4.8.1演示程序ex48b
% 单元阵列赋值演示程序
% 西安电子科技大学出版社出版  陈怀琛编著 1999年10月初版，2004年11月第二版
%
name={'John';'Alice'};
birthday={'1985.06.15';'1986.01.20'};
score={[85,78,92,68];[77,81,65,91]};
student={name;birthday;score};
student,pause
student{1},pause
student{1}{2},pause
student{3}{2},pause
student{3}{2}(2:3),pause
student{1}={'John';'1985.06.15';[85,78,92,68]}
student{2}={'Alice';'1986.01.20';[77,81,65,91]}
student{1},pause
