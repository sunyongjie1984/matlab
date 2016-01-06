%��MATLAB���������γ��е�Ӧ��ָ�ϡ��ھ�����9��1��5����
% �༶�Ŵ��������뼶���Ĺ�ϵ
% �������ӿƼ���ѧ���������  �»�衱��� 1999��10�³��棬2004��11�µڶ���
%
clear,clf, N=input('����Ŵ�������N=�����Ϊ5��');			 
w0=1000; dt=1e-4; tf=0.01;t = 0:dt:tf; 
y=zeros(N,length(t));				% �����ʼ��
for n=1:N
    p0=-linspace(.95,1.05,n)*w0;	% ��H(s)�����ɢ����
    ay = poly([p0,0]);	% ��Y(s)�ļ��㣨��H(s)��һ���㼫�㣩���ĸϵ��
    by = prod(abs(p0));	% ��Y(s)�ķ���ϵ��
    [r,p] = residue(by,ay);		% ��Y(s)����������
    for k = 1: n+1						% �Ѹ����ַ�ʽ��Ӧ��ʱ��������
        y(n,:) = y(n,:) + r(k)*exp(p(k)*t);	
    end
    figure(1),plot(t, y(n,:));grid on,hold on		% ���ƹ��ɹ�������
    set(gcf,'color','w')                        % ��ͼ�α���ɫΪ��ɫ
    % �����⼸������������Ʋ���ͼ���ڿ���ϵͳ����������bode����
    bh=by;ah= poly(p0);		% ��H(s)�ķ��ӷ�ĸϵ��
    w=logspace(2,4);				% ����Ƶ�ʷ�Χ�ͷֶ�
    H = polyval(bh,j*w)./polyval(ah,j*w); % ��H(s)�ڸ�Ƶ���ֵH(jw)
    aH=unwrap(angle(H))*180/pi;		% ����Զ�Ϊ��λ�����������
    fH=20*log10(abs(H));					% ����Էֱ�Ϊ��λ�����
    figure(2),
    set(gcf,'color','w')                        % ��ͼ�α���ɫΪ��ɫ
    subplot(2,1,1),semilogx(w,fH),grid on,hold on	% ���Ƶͼ
    subplot(2,1,2),semilogx(w,aH),grid on,hold on		% ����Ƶͼ
end
hold off

