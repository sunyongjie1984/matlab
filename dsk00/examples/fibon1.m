%��MATLAB�����������γ��е�Ӧ��ָ�ϡ��ڶ��µ�������ʾ����
% �������ӿƼ���ѧ���������  �»�衱��� 1999��10�³��棬2004��11�µڶ���
%
% ��fibonacci���ĳ�����������ĳ���
%
disp('��fibonacci���ĳ���'),pause
R=input('�����������ΧR= ') % ������Χ
f=[1 1];
while f(i)+f(i+1)<R  
    f(i+2)=f(i)+f(i+1);
    i=i+1;
end
f,plot(f)