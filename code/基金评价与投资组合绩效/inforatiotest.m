
%��������
load funddata
%funddata����������
%'Hs300','��ʱ����','��ʵ300','�Ϸ�����'
Rate=price2ret(funddata);
hs300=Rate(:,1);
js300=Rate(:,3);
bszt=Rate(:,2);
nfjy=Rate(:,4);
%ÿ�꽻����������
%��һ��488�����ݣ�����ǰ244��Ϊ2007�����ݣ���244Ϊ2008������
%�ֱ����ÿ���sharp����
daynum=fix(length(Rate)/2);
%�޷����껪������Ϊ3%�������ջ�
RatioJS2007 = inforatio(js300(1:daynum),hs300(1:daynum))
RatioJS2008 = inforatio(js300(daynum+1:2*daynum), hs300(daynum+1:2*daynum))
%%
RatioBS2007 = inforatio(bszt(1:daynum), hs300(1:daynum))
RatioBS2008 = inforatio(bszt(daynum+1:2*daynum), hs300(daynum+1:2*daynum))
%%
RatioNF2007 = inforatio(nfjy(1:daynum),hs300(1:daynum))
RatioNF2008 = inforatio(nfjy(daynum+1:2*daynum), hs300(daynum+1:2*daynum))