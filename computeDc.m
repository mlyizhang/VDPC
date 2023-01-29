%% 计算dc的函数，按照手动输入的比例取值
function dc = computeDc(distset, percent)
    casenum = size(distset, 1);
    filter = logical(triu(ones(casenum, casenum),1)); 
    % triu得到相似度矩阵上三角矩阵的同形1矩阵
    % logical 得到布尔上三角矩阵
    crossnum = sum(sum(filter));% 计算所有两点距离的个数，除了自身。
    pos = round(crossnum * percent / 100);%按照百分比计算pos，最终得到的是应该取的序数
    sda = sort(distset(filter)); % 取对称矩阵distset的上三角数据进行排序
    dc = sda(pos);% 按照pos取排序好的两点间距离中的一个
end
