%��MATLAB���������γ��е�Ӧ��ָ�ϡ���������5��1��5����
% ���޵Ķ�����б�
% �������ӿƼ���ѧ���������  �»�衱��� 1999��10�³��棬2004��11�µڶ���
%
disp('A�Ƿ���f(xc)������?')	
A=input('A=,����A=1'), 		                      % ���뼫��ֵ
xc=input('xc=,����xc=0'),	                          % �����Ӧ���Ա���ֵ
fxc=input(' f(x)�ı��ʽΪ,����sin(x)/x','s'),		 % ���뺯�����ʽ
flag=1;delta=1;x=xc-delta;n=1;					    % ��ʼ��
while flag==1 epsilon=input('�θ�һ��С������=')			% ���������
    while abs(A-eval(fxc))>epsilon delta=delta/2;x=xc-delta;	% �Ҧ�
        if abs(delta)< eps disp('�Ҳ�����'),n=0;
            break	                              % �Ҳ����ģ�������ѭ��
        end,
    end
    if n==0 disp('���޲���ȷ'),
        break,
    end,	                                    % ���޲���ȷ, ������ѭ��
    disp('��='),delta				           % �ҵ��˦�,
    disp('���޿�����ȷ')
    flag=input('����һ������? ���԰� 1 �����԰�0���������ּ� '), % ���ԣ�
end
