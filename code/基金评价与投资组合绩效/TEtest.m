
%��������
load funddata
%funddata����������
%'Hs300','��ʱ����','��ʵ300','�Ϸ�����'
Rate=price2ret(funddata);
hs300=Rate(:,1);
js300=Rate(:,3);
%ÿ�꽻����������
%��һ��488�����ݣ�����ǰ244��Ϊ2007�����ݣ���244Ϊ2008������
%�ֱ����ÿ���sharp����
daynum=fix(length(Rate)/2);
%�޷����껪������Ϊ1.98%�������ջ�
Cash=(1+0.0198)^(1/daynum)-1;
%�����������У�����ÿ�ն�һ������׼����ʹ��
%shiborÿ�����ʣ�ծȯ�ع�����
%ҵ����׼95%�Ļ���300+5%��ͬҵ�������
benchmark=0.95*hs300+0.05*Cash;
[RatioJS2007,TEJS2007] = inforatio(js300(1:daynum),benchmark(1:daynum))
[RatioJS2008,TEJS2008] = inforatio(js300(daynum+1:2*daynum), benchmark(daynum+1:2*daynum))