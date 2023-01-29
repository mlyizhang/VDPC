% 至少连续两个数字是0，计算前面序列中最后一个不是0的元素位置
function start=twozeroleast(ss)

res=find(ss==0)
% res只有两个数字
if length(res)<=1
       % 没有空白区域，则说明不存在密度差异太大的情况，返回start=100
            start=100;
            fprintf('1');
end
if length(res)==2
    if res(1)==res(2)-1
        start=res(1)-1;
        fprintf('2');
        return;
    end
end

if length(res)>2
    k=0;
samenum=0;
for i=1:length(res)
    %连续两个位置是0，则说明delta的空白区域已经产生
    k=i+1;
    if res(k)==res(i)+1
        samenum=samenum+1;
        if samenum>=2
           start=res(i)-samenum;
           fprintf('3');
           break;
        else
            % 没有空白区域，则说明不存在密度差异太大的情况，返回start=100
            start=100;
         
        end
    end
end
end
% 如果res 
end
