function Simi = computeSimi(data)
D = pdist(data); %ŷʽ����
Simi=squareform(D); %��D��ԭΪ�������
end