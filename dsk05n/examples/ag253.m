%�����Դ���ʵ�����MATLAB���š��ڶ��µ������ʾ������ag251
% ��ɫ�Ͷ���
% ���ӹ�ҵ���������  �»�� ��������� 2005��10��

echo on,clf,axis equal, 	% ��Ϊ������ͼ����Բ��,�ʰ����������ȱ���
M = moviein(16);	% Ϊ����MԤ��16��ͼ�Ĵ洢�ռ�
for j=1:16 		% ��16��ѭ��
	plot(fft(eye(j+16))); 	% ��ͼ
	M(:,j)=getframe; 		% ���δ���M��
end
shg,movie(M,30)				% ������
[x,y]=meshgrid([-2:.2:2]); % �趨����
z = x.*exp(-x.^2-y.^2);		% ��͹���淽��
pause,subplot(1,2,1),surf(x,y,z),colorbar,pause	% ��ɫͼ��z����ȡ
subplot(1,2,2),surf(x,y,z,abs(gradient(z))),colorbar,pause	% ��ɫͼ��z���ݶ�ȡ
