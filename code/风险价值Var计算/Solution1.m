%% ����Ͷ����Ϸ��ռ�ֵ��VaR)-1
% ������ʹ�����ֲ�ͬ�ķ�������Ͷ����Ϸ��ռ�ֵ
% ���巽��Ϊ��
% 
% # ��ʷģ��
% # ����ģ��
% # ���ؿ���ģ�� 

%% Import data from Excel
% ��Excel�ж�ȡ����
% �ļ�CSI300.xlsx�������������ֱ�Ϊ����300ָ���ɷֹɼ۸����У�
% ����300ָ���ɷֹ�Ȩ�أ�������������300ָ���۸�
[num,txt]=xlsread('CSI300.xlsx','CSI300');
CSI300Dates=txt(4:end,1);%ʱ��
CSI300Tickers=txt(2,2:end);%��Ʊ����
CSI300HistPrices=num;%�ɷֹ���ʷ�۸�
[num,txt]=xlsread('CSI300.xlsx','Portfolio Positions');
positionsPortfolio=num;%positionsPortfolio ��Ʊ����
[num,txt]=xlsread('CSI300.xlsx','CSI300-Index');
pricesIndex=num;%ָ���۸�
save CSI300Prices CSI300Dates CSI300Tickers CSI300HistPrices positionsPortfolio pricesIndex
%% Convert price series to return series and visualize historical returns
% ������תΪ���������в�������ʷ��������
% ��������Ѵ��棨�ǵ�һ�����У�
clear variables
load('CSI300Prices.mat')

%% Visualize price series
% ���ӻ��۸�����
% ��׼���۸񣬳�ʼ�۸�Ϊ1.00
normPrices = ret2tick(tick2ret(CSI300HistPrices));

% ����ѡ����Ʊ�ı�׼���۸�'���A'��'Ϋ����'��'�Ϻ���Դ'
%ѡ����Ʊ
mypick = strcmpi(CSI300Tickers, '���A') | strcmpi(CSI300Tickers, 'Ϋ����') ...
    | strcmpi(CSI300Tickers, '�Ϻ���Դ');
%ѡ����Ʊ�۸�����
mypickStockPrices = CSI300HistPrices(:, mypick);
%ѡ����Ʊ�ı�׼�۸�
mypickNormPrices = normPrices(:, mypick);
%ѡ����Ʊ������
mypickCSI300Tickers = CSI300Tickers(mypick);
%����ͼ��
plot(mypickNormPrices,'DisplayName','mypickNormPrices','YDataSource','mypickNormPrices');figure(gcf)
legend(mypickCSI300Tickers)
normIndexPrice = ret2tick(tick2ret(pricesIndex));%ָ����׼�۸�
hold all
plot(normIndexPrice,'DisplayName','Index','YDataSource','normIndexPrice');figure(gcf)
%% Simple data analysis, mean, std, correlation, beta
%������Ʊ�۸��������ֵ����׼��������beta
%�۸�ת������
mypickRet = tick2ret(mypickStockPrices, [], 'Continuous');
mean(mypickRet)%��ֵ
std(mypickRet)%��׼��
maxdrawdown(mypickStockPrices)  %���س�
corrcoef(mypickRet)% �����

% ��Beta����
IndexRet = tick2ret(pricesIndex);%ָ��������
SZ02 = tick2ret(mypickStockPrices(:,1));%ѡ�й�Ʊ�۸�תΪ������

% �Զ�����ͼƬ(cftool)
[fitresult, gof] = createFit(IndexRet, SZ02)

%% Calculate return from price series
%����۸����е�������
%�ɷֹ���ʷ������ 'Continuous'ָ����ʽ
returnsSecurity = tick2ret(CSI300HistPrices,[],'Continuous');
%�ۼ�������
totalReturns = sum(returnsSecurity);
numDays = size(CSI300HistPrices, 1);

% ���ƹ�Ʊ�ȸ�ͼ����ά��  
%For more information edit the M-file "makeHeatmap.m"
makeHeatmap(totalReturns(end, :), CSI300Tickers, numDays, 'returns', 'matlab');

% [EOF]