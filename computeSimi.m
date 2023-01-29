function Simi = computeSimi(data)
D = pdist(data); %欧式距离
Simi=squareform(D); %将D还原为距离矩阵
end