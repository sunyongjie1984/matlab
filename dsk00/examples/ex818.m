%��MATLAB�����������γ��е�Ӧ��ָ�ϡ��ڰ�����8��1��8����
% ��������ļ�����任
% �������ӿƼ���ѧ���������  �»�衱��� 1999��10�³��棬2004��11�µڶ���
%
% ��������任
r=100; L=0.02; C=0.01;w=300;
z1=r; z2 =j*w*L; z3=1/(j*w*C);
Z(1,1) =z1+z2; Z(1,2)=z2; Z(2,1)=z2; Z(2,2)=z2+z3;
Y=inv(Z), H=[det(Z), Z(1,2); -Z(2,1),1] / Z(2,2),
   
% ���µĹ�ʽ����Ϊ��ֱ��ִ��,����Ϊ���߸��ƺ�ճ��֮��.   
%��1�� Z=inv(Y); Y=inv(Z); B=inv(A); A=inv(B); H=inv(G); G=inv(H);
%�������ϵ�ǿɴ����ǵĶ���õ��ġ�
%��2�� A=[Z(1,1), det(Z); 1, Z(2,2)] / Z(2,1); 
%Z=[A(1,1), det(A); 1, A(2,2)] / A(2,1); 
%��3�� H=[det(Z), Z(1,2); -Z(2,1),1] / Z(2,2); 
%Z=[ det(H), H(1,2); -H(2,1),1] / H(2,2);
%�����������ϵ�������ֲ������κ�����֮��Ͷ��ܱ任�ˡ�������֪Y��Ҫ��G��
%����Z=inv(Y); G=inv([det(Z), Z(1,2); -Z(2,1),1] / Z(2,2)) ���������á�
%2�� ���������ʵ���Ӱ�����������ʽ
%Zinf = A(1,1)/A(2,1);			% Zinf�������迹Ϊ��ʱ�������迹
%Zin0 = A(1,2)/A(2,2); 		% Zin0�������迹Ϊ0ʱ�������迹
%Zoutf = A(2,2)/A(2,1);		% Zoutf���ź�Դ�迹Ϊ��ʱ������迹
%Zout0 = A(1,2)/A(1,1); 		% Zout0���ź�Դ�迹Ϊ0ʱ������迹
%Zc = sqrt(Zinf*Zin0); Zc = sqrt(Zoutf*Zout0) 		% Zc�������迹
%��=��+j��=20*log10((sqrt(Zinf)+sqrt(Zin0))/ (sqrt(Zoutf)-sqrt(Zout0)))
%�ã����䳣��