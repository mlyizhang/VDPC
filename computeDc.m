%% ����dc�ĺ����������ֶ�����ı���ȡֵ
function dc = computeDc(distset, percent)
    casenum = size(distset, 1);
    filter = logical(triu(ones(casenum, casenum),1)); 
    % triu�õ����ƶȾ��������Ǿ����ͬ��1����
    % logical �õ����������Ǿ���
    crossnum = sum(sum(filter));% ���������������ĸ�������������
    pos = round(crossnum * percent / 100);%���հٷֱȼ���pos�����յõ�����Ӧ��ȡ������
    sda = sort(distset(filter)); % ȡ�Գƾ���distset�����������ݽ�������
    dc = sda(pos);% ����posȡ����õ����������е�һ��
end
