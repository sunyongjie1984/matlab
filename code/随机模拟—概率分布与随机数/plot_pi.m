%plot
%���Դ���Ϊ10��
TestNum=1e4;
%����[-1,1]*[-1,1]�Ϸ��Ӿ��ȷֲ��������
%randΪ[0,1]�Ͼ��ȷֲ���2*(a-0.5���ķ�ʽ����ı�Ϊ
%[-1,1]�ϵľ��ȷֲ�
X=2*(rand(TestNum,2)-0.5);
%�䵽԰�ڵĵ������
CircleNum=0;
%����Ͷ��ģ��
figure
hold on
for i=1:TestNum
    if X(i,1)^2+X(i,2)^2<=1
        CircleNum=CircleNum+1;
        plot(X(i,1),X(i,2),'r.')
    else
        plot(X(i,1),X(i,2),'bo')
    end
    
end
%���㣨Բ���ʣ�Piֵ
SPi=4*CircleNum/TestNum;