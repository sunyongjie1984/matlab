%��MATLAB���������γ��е�Ӧ��ָ�ϡ��ڰ�����8��2��2����
% ����ܷŴ�����Ƶ��Ч��·����
% �������ӿƼ���ѧ���������  �»�衱��� 1999��10�³��棬2004��11�µڶ���
%
clear
w=logspace(0,3);
C1=1e-5;rs=100;rb=1e4;
hie=1000;hfe=100;us=1;
re=200; Ce=1e-4; rc=1000; 
C2=1e-5; rL=2000; 
for C2=[C2,10*C2]
    Ce=1e-4;
    for Ce=[Ce,10*Ce]
        for i=1:length(w)
            s=j*w(i);
            a11=1/rs+s*C1;a12=-s*C1;
            a21=-s*C1;a22=s*C1+1/rb+1/hie;a23=-1/hie;
            a32=(1+hfe)/hie;a33=-((1+hfe)/hie+1/re+s*Ce);
            a42=hfe/hie;a43=-hfe/hie;a44=-(1/rc+s*C2./(rL*C2*s+1));
            a=[a11,a12,0,0;a21,a22,a23,0;0,a32,a33,0;0,a42,a43,a44];
            b=[us/rs;0;0;0];
            x=a\b;
            u(:,i)=x;
        end
        s=j*w;uL=u(4,:).*rL./(rL+1./(C2*s));
        loglog(w,abs(uL)),grid,hold on
        set(gcf,'color','w')                        % ��ͼ�α���ɫΪ��ɫ
    end
end
xlabel('\omega'),ylabel('����')
text(20,1,'C2,Ce'),text(7,7,'10C2,10Ce')
text(50,10,'C2,10Ce'),text(2,.15,'10C2,Ce')
hold off