
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
Cash=(1+0.03)^(1/daynum)-1;
%�����������У�����ÿ�ն�һ������׼����ʹ��
%shiborÿ�����ʣ�ծȯ�ع�����
Cash=Cash*ones(daynum,1);
%��ʼ����,����'capm'ģ��,'daynum*'��alpha�껪
RatioJS2007 = daynum*portalpha(js300(1:daynum), hs300(1:daynum),Cash,'capm')
RatioJS2008 = daynum*portalpha(js300(daynum+1:2*daynum),hs300(daynum+1:2*daynum), Cash,'capm')
%%
RatioBS2007 = daynum*portalpha(bszt(1:daynum), hs300(1:daynum),Cash,'capm')
RatioBS2008 = daynum*portalpha(bszt(daynum+1:2*daynum),hs300(daynum+1:2*daynum), Cash,'capm')
%%
RatioNF2007 = daynum*portalpha(nfjy(1:daynum), hs300(1:daynum),Cash,'capm')
RatioNF2008 = daynum*portalpha(nfjy(daynum+1:2*daynum), hs300(daynum+1:2*daynum),Cash,'capm')
