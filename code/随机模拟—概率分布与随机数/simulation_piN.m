%simulation piN
%ģ��Ͷ�������10W��1000W
TestNum=1e5:1e5:1e7;
%ģ��Ĵ���
simuNum=length(TestNum);
%����[-1,1]*[-1,1]�Ϸ��Ӿ��ȷֲ��������
%randΪ[0,1]�Ͼ��ȷֲ���2*(a-0.5���ķ�ʽ����ı�Ϊ
%[-1,1]�ϵľ��ȷֲ�
for k=1:simuNum
    X=2*(rand(TestNum(k),2)-0.5);
    %�䵽԰�ڵĵ������
    CircleNum=0;
    %����Ͷ��ģ��
    for i=1:TestNum(k)
        if X(i,1)^2+X(i,2)^2<=1
            CircleNum=CircleNum+1;
        end
    end
    %���㣨Բ���ʣ�Piֵ
    SPi(k)=4*CircleNum/TestNum(k);
end
plot(SPi)
xlabel('TestNum')
ylabel('pi')