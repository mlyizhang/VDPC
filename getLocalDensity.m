% %% 计算 rho，每个点的局部密度
% function rhos = getLocalDensity(distset, dc)
% Row= size(distset, 1);
% 
%    for i=1:Row-1
%         for j=i+1:Row
%             rhos(i)=rhos(i)+exp(-( distset(i,j)/dc)*( distset(i,j)/dc));
%             rhos(j)=rhos(j)+exp(-( distset(i,j)/dc)*( distset(i,j)/dc));
%         end
%    end
%    [rhos,ordrho]=sort(rho,'descend');
%    
% end
function rhos = getLocalDensity(distset, dc)
    casenum = size(distset, 1);
    rhos = zeros(1, casenum);
    % Gaussian kernel
    for i = 1:casenum-1
        for j = i+1:casenum
            gk = exp(-(distset(i,j) / dc) * (distset(i,j) / dc));
            %fprintf('i: %d, j: %d, gk: %f\n', i, j, gk);
            rhos(i) = rhos(i) + gk;
            rhos(j) = rhos(j) + gk;
        end
    end
end
%     casenum = size(distset, 1);
%     %rhos = zeros(1, casenum);
%     gaus = exp(-((distset / dc) .^ 2));%高斯核计算密度
%     rhos = sum(gaus) - 1;