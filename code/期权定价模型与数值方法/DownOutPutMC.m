function [P,aux,ci]=DownOutPutMC(s0,E,r,T, sigma,sb,Nsteps,Nrep1)
dt=TNsteps;
nudt=(r-0.5sigma^2)dt;
sidt=sigmasqrt(dt);
randn('seed',0);
rand=randn(Nrep1,Nsteps);
rand1=nudt+sidtrand;
% ���з��������ۼ�
rand2=cumsum(rand1,2); 
path=s0exp(rand2);
% �趨�ֽ�����ֵΪ0
payoff=zeros(Nrep1,1);  
for i=1Nrep1
ax=path(i,);
if min(ax)sb 
    % ���·���е�����һ��۸�����ϰ�ֵ���ֽ���Ϊ0
     payoff(i)=0;
else 
      payoff(i)=max(0,E-ax(Nsteps));
end
end
[P,aux,ci]=normfit(exp(-rT)payoff);
