%��MATLAB�����������γ��е�Ӧ��ָ�ϡ��ھ�����9��2��2����
% �ɲ�ַ��̵��������
% �������ӿƼ���ѧ���������  �»�衱��� 1999��10�³��棬2004��11�µڶ���
%
clear
a = input('��ַ�����˵�ϵ������a=[a(1),...a(na)]=(����ȡ [1,-1,0.9] ) ');
b = input('��ַ����Ҷ˵�ϵ������b=[b(1),...b(na)]=(����ȡ [2,3] ) ');
u = input('�����ź�����u=(����ȡ cos(0.5*[1:59]) ) ');
na=length(a);nb=length(b);nu=length(u);
s=['�����ǰ',int2str(na-1),'��ym��ֵ =[ym(1),..,ym(na-1)]=(����ȡ [0,0] )'];
ym=zeros(1,na+nu);ym(1:na-1) = input(s);    % ����ym���в������ֵ
um = [zeros(1,na-1),u];					    % ����um���в������ֵ
for n=na:na+nu-1							% ���n��ym�����Ϊ׼
   ys = ym(n-1:-1:n-na+1); us = um(n:-1:n-nb+1);	% ����us��ys
   ym(n) = (b*us'-a(2:na)*ys')/a(1);		% ��ַ��̵�����ym
end
% ��ymʱ����������na-1λ,���y
y = ym(na:na+nu-1);                         % ���������յ��y����
stem(y),grid
line([0,60],[0,0])		                    % ����������
set(gcf,'color','w')                        % ��ͼ�α���ɫΪ��ɫ
 