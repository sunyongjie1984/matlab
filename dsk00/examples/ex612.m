%��MATLAB���������γ��е�Ӧ��ָ�ϡ���������6��1��2����
% ���ֵ�λ����
% �������ӿƼ���ѧ���������  �»�衱��� 1999��10�³��棬2004��11�µڶ���
%
clear all; disp(' ���ȵ�λ�������') 
fprintf('���ȵ�λ: \n'); 		%@ ѡ����������ĵ�λ
fprintf(' 1) ����   2) ��  3) ǧ�� 4) Ӣ�� \n');
fprintf('  5) Ӣ��   6) Ӣ��  7) �г�  8) ����  \n');
InUnits = input('ѡ�����뵥λ���: ');
OutUnits = input('ѡ�������λ���: ');
% ����ֵ�λ���׵ı任��������	ToMeter 
ToMeter = [0.01, 1.00, 1000.0, 0.0254, 0.3048, 1609.3, 1/3, 500 ];
FrmMeter= 1./ ToMeter; 		%���任��������FrmMeterΪToMeter����ĵ���
Value = input('������任��ֵ(0Ϊ�˳�): '), 
while( Value ~= 0 ) 			
    ValueinM = Value*ToMeter(InUnits);	 %@ ������ֵ��Ϊ��
    NewValue = ValueinM*FrmMeter(OutUnits);  %@ ���ݱ�Ϊ�����λ
    fprintf('�任���ֵ�� %g \n',NewValue);  		%@ ��ӡ�任���ֵ
    Value = input('������任��ֵ(0Ϊ�˳�): '); 	%@ �����¸�����ֵ
end

