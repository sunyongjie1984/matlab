%��MATLAB���������γ��е�Ӧ��ָ�ϡ���������6��5��1����
% �ɱϰ£����߶��ɼ���ų�
% �������ӿƼ���ѧ���������  �»�衱��� 1999��10�³��棬2004��11�µڶ���
%
clear all;                          % �幤���ռ估������ʼ��
mu0 = 4*pi*1e-7;                    % ��յ����� (T*m/A)
I0 = 5.0;                           % ���е���(A)
Rh = input('���뻷�뾶Rh(m):(����ȡ2) ');
C0 = mu0/(4*pi) * I0;               % �鲢����
xMax = 3; yMax = 3;                 % �涨ͼ�ķ�Χ
NGx = 21; NGy = 21;          		% �涨�۲����������
x=linspace(-xMax, xMax, NGx);		% ȷ���۲���x,y��������
y=linspace(-yMax, yMax, NGy);
Nh = 20;		                    % �������ֶ��� 
% ����ÿ�εĶ˵�,����x=0ƽ����,������x1,x2��Ϊ��
theta0 = linspace(0,2*pi, Nh+1);	% ����Բ�ܽǷֶ�
theta1 = theta0(1:Nh);
y1 = Rh*cos(theta1);		% �������������������y1,z1
z1 = Rh*sin(theta1);
theta2 = theta0(2:Nh+1);
y2 = Rh*cos(theta2);		% �������������յ�����y2,z2
z2 = Rh*sin(theta2);  
dlx = 0;   		            % ���㻷��������dl����������
dly = y2-y1;
dlz = z2-z1;  
xc = 0; 	  	            % ���㻷���������е�������������
yc = (y2+y1)/2;
zc = (z2+z1)/2;
% ѭ�������������ϵ�B(x,y) ֵ
for i=1:NGy
    for j=1:NGx 
        % ��yzƽ���ڵĵ������ֶ���Ԫ��Ⱥ����,���㻷��ĳ����۲��֮�������r
        rx = x(j) - xc;
        ry = y(i) - yc;
        rz = -zc;                           % �۲����z=0ƽ����	 
        r3 = sqrt(rx.^2 + ry.^2 + rz.^2).^3;	 	 % ����r^3
        dlXr_x = dly.*rz - dlz.*ry; 	    % �����˻�dl X r�� x �� y ���� 
        dlXr_y = dlz.*rx - dlx.*rz;	 
        Bx(i,j) = sum(C0*dlXr_x./r3); 	    % �Ѵų����ε�x �� y �����ۼ�
        By(i,j) = sum(C0*dlXr_y./r3);
    end
end
clf;   quiver(x,y,Bx,By);    	            %  ��quiver ���ų�����ͼ
set(gcf,'color','w')                        % ��ͼ�α���ɫΪ��ɫ
hold on;						
plot(0,Rh,'bo');plot(0,-Rh,'rx');  	        % ��ͼ�ϻ���������
xlabel('x');  ylabel('y');
hold off;
