function [min_rho, min_delta] = selectRect()%选簇中心的范围
    subplot(2,2,2);
    rect = getrect;
    %fprintf('rect(x:%i y:%i width:%i height:%i)\n', rect(1), rect(2), rect(3), rect(4));
    min_rho   = rect(1);
    min_delta = rect(2);
end