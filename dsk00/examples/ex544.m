%��MATLAB���������γ��е�Ӧ��ָ�ϡ���������5��4��4����
% ���ػ���
% �������ӿƼ���ѧ���������  �»�衱��� 1999��10�³��棬2004��11�µڶ���
%
clear,format compact
dx=input('dx=(����Ϊ0.1��0.01) ');dy=dx;dz=dx;
x=0:dx:1;
for k=1:length(x)
    x1=(k-1)*dx;
    y=0:dy:x1;
    for j=1:length(y)
        y1=(j-1)*dy;
        z1=0:dz:x1*y1;
        f=x1.*y1.^2.*z1.^3;
        s1(j)=trapz(f)*dz;
    end
    s2(k)=trapz(s1)*dy;
end
s=trapz(s2)*dx
%dx=0.1;s=0.0030;
%dx=0.01;s=0.0027