%��MATLAB���������γ��е�Ӧ��ָ�ϡ������µڰ˽���ʾ����
% �ṹ���и�ֵ��ʾ
% �������ӿƼ���ѧ���������  �»�衱��� 1999��10�³��棬2004��11�µڶ���
%
disp('�ó���ֵ���������ṹ'),pause,echo on
patient.name = 'John Doe';
patient.billing = 127.00;
patient.test = [79 75 73; 180 178 177.5; 220 210 205];
disp('�ó���ֵ��������ڶ����ṹ����'),pause
patient(2).name = 'Ann Lane';
patient(2).billing = 28.50;
patient(2).test = [68 70 68; 118 118 119; 172 170 169];pause
patient,pause
patient(1),pause
patient(2),pause
patient(1).test,pause
patient(2).test(2,:),pause
disp('��struct���������ṹ'),pause
disp('��struct���������ṹ�ĵ�һ�ֱ���'),pause
weather(3) = struct('temp',72,'rainfall',0.0)
disp('��struct���������ṹ�ĵڶ��ֱ�������repmat'),pause
weather = repmat(struct('temp',72,'rainfall',0.0),1,3)
disp('��struct���������ṹ�ĵ����ֱ�������cell array���'),pause
weather = struct('temp',{68,80,72},'rainfall',{0.2,0.4,0.0})
weather(1),pause
weather(2),pause
weather(3).temp
str=getfield(weather)