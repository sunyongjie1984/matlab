%《MATLAB及其在理工课程中的应用指南》第八章例8－1－6程序
% 交流谐振电路
% 西安电子科技大学出版社出版  陈怀琛编著 1999年10月初版，2004年11月第二版
%
r1=2; r2=3; L1=0.75e-3; L2=0.25e-3;     % 原始参数
C=1000e-12;rs=28200;
L=L1+L2;r=r1+r2;rse=rs*(L/L1)^2; 		% 折算内阻
f0=1/(2*pi*sqrt(C*L));
Q0=sqrt(L/C)/r,r0=L/C/r;			    % 空载Q0值
re=r0*rse/(r0+rse); 				    % 折算内阻与回路电阻的并联
Q=Q0*re/r0,B=f0/Q,				        % 实际Q值和通带
s=log10(f0);
f=logspace(s-.1,s+.1,501);w=2*pi*f;		% 设定计算的频率范围及数组
z1e=r1+j*w*L; z2e=r2+1./(j*w*C);        % 等效单回路中两个电抗支路的阻抗
ze = 1./(1./z1e+1./z2e+1./rse);	        % 等效单回路中三个支路的并联阻抗
subplot(2,1,1),loglog(w,abs(ze)),grid	% 画对数幅频特性
set(gcf,'color','w')                    % 置图形背景色为白色
axis([min(w),max(w),0.9*min(abs(ze)),1.1*max(abs(ze))])
subplot(2,1,2),semilogx(w,angle(ze)*180/pi),grid % 画相频特性
axis([min(w),max(w),-100,100])
fh=w(find(abs(1./(1./z1e+1./z2e))>50000))/2/pi; % % 求幅特性大于50k的频带
fhmin=min(fh),fhmax=max(fh),
