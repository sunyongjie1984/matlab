%��MATLAB�����������γ��е�Ӧ��ָ�ϡ���������5��1��3����
% �������̣����ߵĻ���
% �������ӿƼ���ѧ���������  �»�衱��� 1999��10�³��棬2004��11�µڶ���
%
t=0:0.1:10;
r=1,R0=[1,0.7,1.5]
for k=1:3
    R=R0(k)
    x=r*t-R*sin(t);y=r-R*cos(t);
    plot(x,y),axis('equal'),grid on,hold on
    if k==1 text(3,2.2,'����')
    elseif k==2 text(3,1.3,'�ڰ���')
    elseif k==3 text(3,2.9,'�����')
    end
end
set(gcf,'color','w')                                % ��ͼ�α���ɫΪ��ɫ