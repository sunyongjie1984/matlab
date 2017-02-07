function RetraceRatio = RetraceRatio(Equity)
% �������س�����
% by liyang 2011/12/13
% farutoliyang@gmail.com
%% ����������
error(nargchk(1, 1, nargin));

%% ��ʼ��
len = numel(Equity);
RetraceRatio = zeros(len, 1);
%% �������س�����
for i = 2:len
    C = max(Equity(1:i));
    if C == Equity(i)
        RetraceRatio(i) = 0;
    else
        RetraceRatio(i) = (Equity(i)-C)/C;
    end
end
%% 
if nargout == 0
    figure;
    
    subplot(2,1,1);
    plot(Equity);
    title('�ʽ�Ȩ��');
    grid on;
    axis tight;
    
    subplot(2,1,2);
    plot(RetraceRatio);
    title('���س�����');
    grid on;
%     axis([0 len -0.5 0.3]);
    axis tight;
end