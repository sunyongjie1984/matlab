%��������
load funddata
%funddata����������
%'Hs300','��ʱ����','��ʵ300','�Ϸ�����'
Rate=price2ret(funddata);
js300=Rate(:,3);
bszt=Rate(:,2);
nfjy=Rate(:,4);
%ÿ�꽻����������
%��һ��488�����ݣ�����ǰ244��Ϊ2007�����ݣ���244Ϊ2008������
%�ֱ����ÿ���sharp����
daynum=fix(length(Rate)/2);
%�޷����껪������Ϊ3%�������ջ�
Cash=(1+0.03)^(1/daynum)-1;
%��ʼ����
RatioJS2007 = sharpe(js300(1:daynum), Cash)
RatioJS2008 = sharpe(js300(daynum+1:2*daynum), Cash)
%%
RatioBS2007 = sharpe(bszt(1:daynum), Cash)
RatioBS2008 = sharpe(bszt(daynum+1:2*daynum), Cash)
%%
RatioNF2007 = sharpe(nfjy(1:daynum), Cash)
RatioNF2008 = sharpe(nfjy(daynum+1:2*daynum), Cash)
