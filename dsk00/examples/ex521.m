%��MATLAB���������γ��е�Ӧ��ָ�ϡ���������5��2��1����
% ���������������״��Ӱ��
% �������ӿƼ���ѧ���������  �»�衱��� 1999��10�³��棬2004��11�µڶ���
%
echo off
for m=1:3
   a=input('a= ������Ϊa(1)=5,a(2)=5i,a(3)=5i) ');
   b=input('b= ������Ϊb(1)=4,b(2)=4,b(3)=4i) ');
   c=input('c= ������Ϊc(1)=3,c(2)=3,c(3)=3) ');	%���������NΪ�����ߵ���Ŀ
   d=input('d= ������Ϊd(1)=1,d(2)=1,d(3)=0.1) ');
   N=input('N= ������ΪN(1)=20,N(2)=15,N(3)=10) ');
   xgrid=linspace(-abs(a),abs(a),N);		% ����x��������
   ygrid=linspace(-abs(b),abs(b),N);		% ����y��������
   [x,y]=meshgrid(xgrid,ygrid);		        % ����N��N�����xy��������
   z=c*sqrt(d-y.*y/b/b-x.*x/a/a);u=1;		% u=1,��ʾzҪȡ����ֵ
   z1=real(z);								% ȡz��ʵ��z1
   for k=2:N-1							    % �������г���Ϊȡ��z�к������ĵ�
      for j=2:N-1
         if imag(z(k,j))~=0 z1(k,j)=0; end
         if all(imag(z([k-1:k+1],[j-1:j+1])))~=0 z1(k,j)=NaN; 			
         end
      end
   end
   subplot(1,3,m),surf(x,y,z1),hold on		% ���ռ�����
   set(gcf,'color','w')                     % ��ͼ�α���ɫΪ��ɫ
   if u==1 z2=-z1;surf(x,y,z2);	            % u=1ʱ�ӻ������棬���Ӹ�������
      axis([-abs(a),abs(a),-abs(b),abs(b),-abs(c),abs(c)]);
   end
   xlabel('x'),ylabel('y'), zlabel('z')
   hold off
end
