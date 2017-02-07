%%  ����Ͷ����Ϸ��ռ�ֵ��VaR)-2
% ������ʹ�����ֲ�ͬ�ķ�������Ͷ����Ϸ��ռ�ֵ
% ���巽��Ϊ��
% 
% # ��ʷģ��
% # ����ģ��
% # ���ؿ���ģ�� 

%% Import data from Excel
%��Excel�ж�ȡ����
%�ļ�CSI300.xlsx�������������ֱ�Ϊ����300ָ���ɷֹɼ۸����У�
%����300ָ���ɷֹ�Ȩ�أ�������������300ָ���۸�
% [num,txt]=xlsread('CSI300.xlsx','CSI300');
% CSI300Dates=txt(4:end,1);%ʱ��
% CSI300Tickers=txt(2,2:end);%��Ʊ����
% CSI300HistPrices=num;%�ɷֹ���ʷ�۸�
% [num,txt]=xlsread('CSI300.xlsx','Portfolio Positions');
% positionsPortfolio=num;%positionsPortfolio ��Ʊ����
% [num,txt]=xlsread('CSI300.xlsx','CSI300-Index');
% pricesIndex=num;%ָ���۸�
% save CSI300Prices CSI300Dates CSI300Tickers CSI300HistPrices positionsPortfolio pricesIndex

%% Convert price series to return series and visualize historical returns
% ������תΪ���������в�������ʷ��������
% ��������Ѵ��棨�ǵ�һ�����У�
clear variables %��ձ����ռ�
load('CSI300Prices.mat')

%% Calculate return from price series
%���ݼ۸����м���������
returnsSecurity = tick2ret(CSI300HistPrices,[],'Continuous');

%% Historical Simulation visually
% ��ʷģ�ⷽ��������Ͷ����ϼ�ֵ
pricesPortfolio = CSI300HistPrices*positionsPortfolio;

% Ͷ����ϵ�������
returnsPortfolio = tick2ret(pricesPortfolio, [], 'continuous');

% Ͷ��������һ�յ���ֵ
marketValuePortfolio = pricesPortfolio(end);

%��ʷ���ݵ�Histͼ
simulationResults = visualizeVar(returnsPortfolio, marketValuePortfolio);
%�����visualizeVar����
%% Historical Simulation programatically
%��ʷģ�ⷨ����
% �������� 1% �� 5% ������ˮƽ 
confidence = prctile(returnsPortfolio, [1 5]);

% ��ʷģ�ⷨ�Ŀ��ӻ�
figure;
hist2color(returnsPortfolio, confidence(2), 'r', 'b');
%�����hist2color����
%��ʷ���� 99% �� 95% ˮƽ�ķ��ռ�ֵ 
hVar = -marketValuePortfolio*confidence;
displayVar(hVar(1), hVar(2), 'hs');
%�����displayVar����
%% Parametric
%����ģ��
% ���� 99% �� 95% ˮƽ�ķ��ռ�ֵ�����������ʷ�����̬�ֲ���
pVar = portvrisk(mean(returnsPortfolio), std(returnsPortfolio), [.01 .05],...
    marketValuePortfolio);
%��ͼ
displayVar(pVar(1), pVar(2), 'p')

%% Monte Carlo using portsim
%���ؿ��޷���
[marketValuePortfolio, weightsPortfolio] = getPortfolioWeights(...
    CSI300HistPrices, positionsPortfolio);
%����μ�getPortfolioWeights����

numObs = 1; % ��������
numSim = 10000; % ģ�����
% Ԥ�������뷽��
expReturn = mean(returnsSecurity); 
expCov = cov(returnsSecurity);
%rng Control the random number generator
rng(12345)
%�����ʲ������ʾ���
simulatedAssetReturns = portsim(expReturn,expCov,numObs,1,numSim, 'Exact');

% ָ��������
simulatedAssetReturns = exp(squeeze(simulatedAssetReturns))-1;
mVals = weightsPortfolio*simulatedAssetReturns;
mVar = -prctile(mVals*marketValuePortfolio, [1 5]);

% ���ӻ�ģ�����
plotMonteCarlo(mVals)

% ���ռ�ֵ 
displayVar(mVar(1), mVar(2), 'mcp')

%% ʹ��GBM ����������ؿ���ģ��
expReturn = mean(returnsSecurity);
sigma = std(returnsSecurity);
correlation = corrcoef(returnsSecurity);
X = CSI300HistPrices(end,:)';
dt = 1;
numObs = 1; % Number of observation
numSim = 10000; % Number of simulation

rng(12345)
GBM = gbm(diag(expReturn), diag(sigma), 'Correlation', correlation, 'StartState', X);

% Simulate for numSim trials
simulatedAssetPrices = GBM.simulate(numObs, 'DeltaTime', dt, 'ntrials', numSim);
simulatedAssetReturns = tick2ret(simulatedAssetPrices, [], 'continuous');
% simulatedAssetReturns = squeeze(simulatedAssetReturns);
simulatedAssetReturns = exp(squeeze(simulatedAssetReturns))-1;
gbmVals = weightsPortfolio*simulatedAssetReturns;
gbmVar = -prctile(gbmVals*marketValuePortfolio, [1 5]);

% Visualize the simulated portfolios
plotMonteCarlo(gbmVals)
% Value at Risk
displayVar(gbmVar(1), gbmVar(2), 'mcg')

% [EOF]