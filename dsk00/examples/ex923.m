%��MATLAB���������γ��е�Ӧ��ָ�ϡ��ھ�����9��2��3����
% �þ���˷�����ɢ����Ҷ�任
% �������ӿƼ���ѧ���������  �»�衱��� 1999��10�³��棬2004��11�µڶ���
%
xn=input('x =������ȡ x=sin(0.1*[1:700])+randn(1,700) ) ');
N= (length(xn));				    % ȡNΪNx
tic;n = [0:1:N-1];                  % n��������
k = [0:1:N-1];                      % k��������
WN = exp(-j*2*pi/N);                % Wn ����
nk = n'*k;                          % ����һ����nkֵ��N �� Nά����
WNnk = WN .^ nk;                    % DFT ����
Xk = xn * WNnk;toc                  % DFT ϵ����������
plot(k,abs(Xk)),grid on, pause
set(gcf,'color','w')                % ��ͼ�α���ɫΪ��ɫ
N=pow2(nextpow2(length(xn)));
tic,X=fft(xn,N);toc