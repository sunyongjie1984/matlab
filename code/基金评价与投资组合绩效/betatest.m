%beta����
load funddata
%������˳��Ϊ'Hs300','��ʱ����','��ʵ300','�Ϸ�����'
%���۸����и�Ϊ����������
Rate=price2ret(funddata);
%��ʱ����
BSbeta=portbeta(Rate(:,1),Rate(:,2));
sprintf('��ʱ����Beta=%3.5f',BSbeta)
%'��ʵ300'
JSbeta=portbeta(Rate(:,1),Rate(:,3));
sprintf('��ʵ300Beta=%3.5f',JSbeta)
%'�Ϸ�����'
NFbeta=portbeta(Rate(:,1),Rate(:,4));
sprintf('�Ϸ�����Beta=%3.5f',NFbeta)
sprintf('�Ϸ�����Beta=%2.3f',NFbeta)
sprintf('�Ϸ�����Beta=%1.1f',NFbeta)