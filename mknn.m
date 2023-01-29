function idx=mknn(data,k)
% data=[1 2
%     3 3
%     3 4 
%     4 2
%     2 1 
%     6 8
%     7 9
%     8 10
%     9 8];
D = pdist(data); %ŷʽ����
Simi=squareform(D); %��D��ԭΪ�������
for i=1:size(Simi,1)
    Simi(i,i)=inf;
end
[sdismat,index] = sort(Simi,2);
% k nearest neighbour
index=index(:,1:k);
% index(1,:)
% index(2,:)
% intersect(index(1,:),index(2,:))
%Adjacency graph==ag
% showShapeSet(data);
% hold on;
ag=[];
for i=1:size(index,1)
    for j=i+1:size(index,1)
%         fprintf('the intersection of %d and %d points\n', i, j)
      lengthnn=length(intersect(index(i,:),index(j,:)));
        if lengthnn>=2
%             find (index(j,:)==i) & find (index(i,:)==j)
%            fprintf('mutural KNN\n') 
           ag(i,j)=1;
           
%            plot([data(i,1), data(i,2)],[data(j,1),data(j,2)]);

%            hold on;
        else
           ag(i,j)=0; 
        end
%          fprintf('**************\n')         
    end   
end
ag;
one=0;
idx=zeros(1,size(data,1) );
for i=1:size(ag,1)
%     fprintf('�� %d ���� \n', i);
    for j=1:size(ag,2)
        if ag(i,j)==1  
%             fprintf('���ڻ�����\n');
            if idx(i)==0
                % ���ֶϲ㣬�µ������
%                 fprintf('���ֶϲ㣬�µ������\n');
               one=one+1;
               idx(i)=one;
               idx(j)=idx(i);
            else
                 idx(i)=one;
               idx(j)=idx(i);
            end
        end
    end
end
%ag  is mKNN graph, each (i,j) represent the mKNN of point i and point j
%% initial clusters generated by mKNN graph
idx=idx';
end