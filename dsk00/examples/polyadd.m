%��MATLAB���������γ��е�Ӧ��ָ�ϡ��ھ�����9-3-2���õ��ӳ���
% �������ӿƼ���ѧ���������  �»�衱��� 1999��10�³��棬2004��11�µڶ���
%
% ����ʽ�������
function y=polyadd(x1,x2)
n1=length(x1); n2= length(x2);
if n1>n2 x2=[zeros(1,n1-n2),x2];
elseif n1<n2 x1=[zeros(1,n2-n1),x1];
end
y = x1+x2;
