% ������������������0������ǰ�����������һ������0��Ԫ��λ��
function start=twozeroleast(ss)

res=find(ss==0)
% resֻ����������
if length(res)<=1
       % û�пհ�������˵���������ܶȲ���̫������������start=100
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
    %��������λ����0����˵��delta�Ŀհ������Ѿ�����
    k=i+1;
    if res(k)==res(i)+1
        samenum=samenum+1;
        if samenum>=2
           start=res(i)-samenum;
           fprintf('3');
           break;
        else
            % û�пհ�������˵���������ܶȲ���̫������������start=100
            start=100;
         
        end
    end
end
end
% ���res 
end
