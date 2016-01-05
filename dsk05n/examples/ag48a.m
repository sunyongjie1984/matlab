%《线性代数实验践及MATLAB入门》第四章4.8.1演示程序ag48a
% 结构阵列赋值演示程序
% 电子工业出版社出版  陈怀琛 龚杰民合著 2005年10月
%
disp('用场域赋值方法建立结构'),pause,echo on
student.name='John';
student.birthday='1985.06.15';
student.score=[85,78,92,68];
student,pause
disp('用struct函数建立结构'),pause
student(2)=struct('name','Alice','birthday','1986.01.20','score',...
[77,81,65,91]);pause
disp('提取结构阵列内容的方法'),pause
for i=1:2   disp(student(i)), end
pause,student.score
