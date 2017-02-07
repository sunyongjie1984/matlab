%% Convert price series to return series and visualize historical returns
% ������תΪ���������в�������ʷ��������
% ��������Ѵ��棨�ǵ�һ�����У�
clear variables %��ձ����ռ�
load('CSI300Prices.mat')
returnsSecurity = tick2ret(CSI300HistPrices,[],'Continuous')
%% ʹ��GBM ����������ؿ���ģ��
[marketValuePortfolio, weightsPortfolio] = getPortfolioWeights(...
    CSI300HistPrices, positionsPortfolio);
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