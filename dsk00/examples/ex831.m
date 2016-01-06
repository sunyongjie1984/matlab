%��MATLAB���������γ��е�Ӧ��ָ�ϡ��ڰ�����8��3��1����
% �ɿع�������ѹ�Ĺ�ϵ
% �������ӿƼ���ѧ���������  �»�衱��� 1999��10�³��棬2004��11�µڶ���
%
% ���㸺���ϵõ�����Чֵ��ѹ�����(1 �� 179 ��)�ĺ�����ϵ,����������
wt = [1:180]*pi/180; 				            % �Ѱ벨�ָ�Ϊ180�� 
volts = 220 * sqrt(2) * sin(wt);		        % �����İ벨����
for ii = 1:180				                    % ��ͬ����iiʱ�Ĳ���
    waveform = [zeros(1,ii-1),volts(ii:180)];   % ��ͬ����iiʱ�Ĳ���
    if ii == 45   waveform45 = waveform; 		% ��¼����Ϊ45��ʱ�Ĳ���
    elseif ii == 90    waveform90 = waveform; 	% ��¼����Ϊ90��ʱ�Ĳ���
    end
    temp = sum(waveform.^2); 		            % ������㲨�ε�ƽ�����֣�
    rms(ii) = sqrt(temp/180); 	                % ������ֵľ�������
end
% �������ϵ���Чֵ��ѹ����ǹ�ϵ���ߣ�
figure(1)
plot([1:180],rms,'Linewidth',2.0);
set(gcf,'color','w')                            % ��ͼ�α���ɫΪ��ɫ
legend('\bf���ص�ѹ��Чֵ(V)');grid on;
gtext('\bf���ǣ���)');pause

%������45��ʱ�����ϵĵ�ѹ���Σ�
figure(2)
plot(wt,waveform45, 'Linewidth',2.0);
set(gcf,'color','w')                            % ��ͼ�α���ɫΪ��ɫ
grid on;
gtext('\bf\omega\itt\rm (����)');


