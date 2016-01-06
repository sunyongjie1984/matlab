%《MATLAB及其在理工课程中的应用指南》第五章例5－2－1程序
% 二次曲面参数对形状的影响
% 西安电子科技大学出版社出版  陈怀琛编著 1999年10月初版，2004年11月第二版
%
echo off
for m=1:3
   a=input('a= （书上为a(1)=5,a(2)=5i,a(3)=5i) ');
   b=input('b= （书上为b(1)=4,b(2)=4,b(3)=4i) ');
   c=input('c= （书上为c(1)=3,c(2)=3,c(3)=3) ');	%输入参数，N为网格线的数目
   d=input('d= （书上为d(1)=1,d(2)=1,d(3)=0.1) ');
   N=input('N= （书上为N(1)=20,N(2)=15,N(3)=10) ');
   xgrid=linspace(-abs(a),abs(a),N);		% 建立x网格坐标
   ygrid=linspace(-abs(b),abs(b),N);		% 建立y网格坐标
   [x,y]=meshgrid(xgrid,ygrid);		        % 建立N×N个点的xy网格坐标
   z=c*sqrt(d-y.*y/b/b-x.*x/a/a);u=1;		% u=1,表示z要取正负值
   z1=real(z);								% 取z的实部z1
   for k=2:N-1							    % 以下七行程序为取消z中含虚数的点
      for j=2:N-1
         if imag(z(k,j))~=0 z1(k,j)=0; end
         if all(imag(z([k-1:k+1],[j-1:j+1])))~=0 z1(k,j)=NaN; 			
         end
      end
   end
   subplot(1,3,m),surf(x,y,z1),hold on		% 画空间曲面
   set(gcf,'color','w')                     % 置图形背景色为白色
   if u==1 z2=-z1;surf(x,y,z2);	            % u=1时加画负半面，并加负坐标轴
      axis([-abs(a),abs(a),-abs(b),abs(b),-abs(c),abs(c)]);
   end
   xlabel('x'),ylabel('y'), zlabel('z')
   hold off
end
