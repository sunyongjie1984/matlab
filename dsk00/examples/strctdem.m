%《MATLAB及其在理工课程中的应用指南》第四章第八节演示程序
% 结构阵列赋值演示
% 西安电子科技大学出版社出版  陈怀琛编著 1999年10月初版，2004年11月第二版
%
disp('用场域赋值方法建立结构'),pause,echo on
patient.name = 'John Doe';
patient.billing = 127.00;
patient.test = [79 75 73; 180 178 177.5; 220 210 205];
disp('用场域赋值方法输入第二个结构阵列'),pause
patient(2).name = 'Ann Lane';
patient(2).billing = 28.50;
patient(2).test = [68 70 68; 118 118 119; 172 170 169];pause
patient,pause
patient(1),pause
patient(2),pause
patient(1).test,pause
patient(2).test(2,:),pause
disp('用struct函数建立结构'),pause
disp('用struct函数建立结构的第一种表述'),pause
weather(3) = struct('temp',72,'rainfall',0.0)
disp('用struct函数建立结构的第二种表述，用repmat'),pause
weather = repmat(struct('temp',72,'rainfall',0.0),1,3)
disp('用struct函数建立结构的第三种表述，用cell array语句'),pause
weather = struct('temp',{68,80,72},'rainfall',{0.2,0.4,0.0})
weather(1),pause
weather(2),pause
weather(3).temp
str=getfield(weather)