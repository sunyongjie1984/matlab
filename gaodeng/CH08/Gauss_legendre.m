function I=Gauss_legendre(fun,a,b,m,n,varargin)
%GAUSS_LEGENDRE   高斯-勒让德方法计算数值积分
% I=GAUSS_LEGENDRE(FUN,A,B,M)  高斯-勒让德方法计算函数FUN在积分区间[A,B]上的
%                              数值积分，并指定每段高斯点数为M
% I=GAUSS_LEGENDRE(FUN,A,B,M,N)  高斯-勒让德方法计算函数FUN在积分区间[A,B]上的
%                                数值积分，并指定每段高斯点数为M和区间等分数N
% I=GAUSS_LEGENDRE(FUN,A,B,M,N,P1,P2,...)  高斯-勒让德方法计算函数FUN的
%                                          数值积分，其中函数FUN带有附加参数
%
% 输入参数：
%     ---FUN：被积函数
%     ---A,B：积分区间端点
%     ---M：每段高斯点数
%     ---N：等分区间数
%     ---P1,P2,...：函数FUN的附加参数
% 输出参数：
%     ---I：求得的数值积分值
%
% See also InterpolatoryQuad, ComplexQuad

if nargin<5 || isempty(n)
    n=10;
end
switch m
    case 0
        t=0;A=2;
    case 1
        t=[-0.5773502692,0.5773502692];A=[1,1];
    case 2
        t=[-0.7745966692,0,0.7745966692];
        A=[0.5555555556,0.8888888889,0.5555555556];
    case 3
        t=[-0.8611363116,-0.3399810436,0.3399810436,0.8611363116];
        A=[0.3478548451,0.6521451549,0.6521451549,0.3478548451];
    case 4
        t=[-0.9061798459,-0.5384693101,0,0.5384693101,0.9061798459];
        A=[0.2369268851,0.4786286705,0.5688888889,0.4786286705,0.2369268851];
    case 5
        t=[-0.9324695142,-0.6612093865,-0.2386191861,...
            0.2386191861,0.6612093865,0.9324695142];
        A=[0.1713244924,0.3607615370,0.4679139346...
            0.4679139346,0.3607615370,0.1713244924];
    case 6
        t=[-0.9491079123,-0.7415311856,-0.4058451514,0,...
            0.4058451514,0.7415311856,0.9491079123];
        A=[0.1294849662,0.2797053915,0.3818300505,0.4179591837,...
            0.3818300505,0.2797053915,0.1294849662];
    case 7
        t=[-0.9602898565,-0.7966664774,-0.5255354099,0.1834346425,...
            0.1834346425,0.5255354099,0.7966664774,0.9602898565];
        A=[0.1012285363,0.2223810345,0.3137066459,0.3626837834...
            0.3626837834,0.3137066459,0.2223810345,0.1012285363,];
    otherwise
        error('本程序最多仅提供m=7！')
end
h=(b-a)/n;
I=0;
for k=1:n
    F=feval(fun,h/2*t+a+(k-1/2)*h,varargin{:});
    I=I+A*F';
end
I=h/2*I;
web -broswer http://www.ilovematlab.cn/forum-221-1.html