%test KMV
%r: risk-free rate
r=0.0225;

%T: Time to expiration
T=1;%���� ����

%DP:Defaut point
%SD: short debt,  LD: long debt
SD=1e8;%����
LD=4e7;%����
%����ΥԼ��
DP=SD+0.5*LD;

%D:Debt maket value
D=DP;%ծ����г���ֵ�������޸�


%theta: volatility
%PriceTheta:  volatility of stock price
PriceTheta=0.2893;%(���룩
%EquityTheta: volatility of Theta value
EquityTheta=PriceTheta;
%AssetTheta: volatility of asset

%E:Equit maket value
E=141276427;
%Va: Value of asset

%to compute the Va and AssetTheta
[Va,AssetTheta]=KMVOptSearch(E,D,r,T,EquityTheta)

%����ΥԼ����
DD=(Va-DP)/(Va*AssetTheta)
%����ΥԼ��
EDF=normcdf(-DD)