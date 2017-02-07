
%��������
load funddata
%funddata����������
%����300�۸�
HS300price=funddata(:,1);
%���ݳ���
N=length(HS300price);
RetraceRatio=zeros(N,1);
%����T����T֮ǰ�������Ļس�����
for i=2:N
    C = max(HS300price(1:i));
    if C == HS300price(i)
    %�������������س�����Ϊ0
        RetraceRatio(i) = 0;
    else
    %��ǰ����֮ǰ��ߵ�س�����
        RetraceRatio(i) = (HS300price(i)-C)/C;
    end
end
%��ͼ
TRate=HS300price/HS300price(1)-1
f=figure;
fill([1:N,N],[RetraceRatio;0],'r')
hold on
plot(HS300price/HS300price(1));
%����������
xlabel('time')
Ylabel('Rate/RetraceRatio')
addpath('customplots')
oaxes([0,0,0])
