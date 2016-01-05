%《线性代数实验践及MATLAB入门》第四章4.8.1演示程序ag48b
% 单元阵列赋值演示程序
% 电子工业出版社出版  陈怀琛 龚杰民合著 2005年10月
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
