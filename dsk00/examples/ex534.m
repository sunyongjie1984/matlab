%��MATLAB���������γ��е�Ӧ��ָ�ϡ���������5��3��4����
% ���⺯����̩�ռ���չ��
% �������ӿƼ���ѧ���������  �»�衱��� 1999��10�³��棬2004��11�µڶ���
%
fxs=input('����y=f(x)�ı��ʽ������Ϊcos(x))','s');	% ����ԭʼ����,fxs���ַ���
K=input('����̩�ռ�����չ������K=(����Ϊ5) ');
a=input('չ����λ��x0= (����Ϊ0.5) ');
b=input('չ�����������b= (����Ϊ2) ');
x=linspace(a-b,a+b);					% �����Ա�������,ȷ���䳤�ȺͲ���
lx=length(x);dx=2*b/(lx-1);
y=eval(fxs);								% ���y��׼ȷֵ
subplot(1,2,1),plot(x,y,'.'),hold on	% y��׼ȷ�����õ��߻��
% ���a��һ�׵���,ע���󵼺����鳤�ȼ�Сһ
Dy=diff(y)/dx;Dya(1)=Dy(round((lx-1)/2));	
yt(1,:)=y(round(lx/2))+Dya(1)*(x-a); 	%��y��һ��̩��չ��,��ͼ
plot(x,yt(1,:))
set(gcf,'color','w')                                % ��ͼ�α���ɫΪ��ɫ
for k=2:K
   Dy=diff(y,k)/(dx^k);Dya(k)=Dy(round((lx-k)/2));	% ���a��k�׵���
   yt(k,:)=yt(k-1,:)+Dya(k)/prod(1:k)*(x-a).^k;	% ���y��k��չ��
   plot(x,yt(k,:)), 						% ��ͼ
   e(k,:)=y-yt(k,:);						% ���yt�����
end
title([fxs,'�ĸ���̩�ռ�������']),			% ע�������ɱ�ע���ַ���
grid, hold off, subplot(1,2,2)						
for k=1:K  plot(x,e(k,:)),hold on,end		% �����������
title([fxs,'�ĸ���̩�ռ������']),grid, hold off
