%��������
load funddata
%funddata����������
%'Hs300','��ʱ����','��ʵ300','�Ϸ�����'
%���ʲ��۸�ת��Ϊ�ʲ�������
Rate=price2ret(funddata);
js300=Rate(:,3);
bszt=Rate(:,2);
nfjy=Rate(:,4);
%ÿ�꽻����������
%��һ��488�����ݣ�����ǰ244��Ϊ2007�����ݣ���244Ϊ2008������
daynum=fix(length(Rate)/2);
%����2007 ��ϵ�Varֵ
%��������վ���������
BsPortReturn=mean(bszt(1:daynum));
%����������������еı�׼��
BsPortRisk=std(bszt(1:daynum));
JsPortReturn=mean(js300(1:daynum));
JsPortRisk=std(js300(1:daynum));
NfPortReturn=mean(nfjy(1:daynum));
NfPortRisk=std(nfjy(1:daynum));
%����ˮƽ99%��95%��90%
RiskThreshold=[0.01,0.05,0.10];
%�ʲ���ֵΪ1.00�����ΪVar����ֵ
PortValue=1;
BsValueAtRisk2007 = portvrisk(BsPortReturn, BsPortRisk, RiskThreshold,PortValue)
JsValueAtRisk2007 = portvrisk(JsPortReturn, JsPortRisk, RiskThreshold,PortValue)
NfValueAtRisk2007 = portvrisk(NfPortReturn, NfPortRisk, RiskThreshold,PortValue)
%%
%����2008Varֵ
%�����վ������������������ʵı�׼��
BsPortReturn=mean(bszt(daynum+1:2*daynum));
BsPortRisk=std(bszt(daynum+1:2*daynum));
JsPortReturn=mean(js300(daynum+1:2*daynum));
JsPortRisk=std(js300(daynum+1:2*daynum));
NfPortReturn=mean(nfjy(daynum+1:2*daynum));
NfPortRisk=std(nfjy(daynum+1:2*daynum));
%����ˮƽ99%��95%��90%
RiskThreshold=[0.01,0.05,0.10];
%�ʲ���ֵΪ1.00�����ΪVar����ֵ
PortValue=1;
BsValueAtRisk2008 = portvrisk(BsPortReturn, BsPortRisk, RiskThreshold,PortValue)
JsValueAtRisk2008 = portvrisk(JsPortReturn, JsPortRisk, RiskThreshold,PortValue)
NfValueAtRisk2008 = portvrisk(NfPortReturn, NfPortRisk, RiskThreshold,PortValue)
