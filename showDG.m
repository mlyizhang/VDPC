function showDeltas(rhos, deltas)

   tt= plot(rhos(:), deltas(:), 'o', 'MarkerSize', 3, 'MarkerFaceColor', 'k', 'MarkerEdgeColor', 'k');
%     text = strcat('max rho: ', num2str(max(rhos)), ', delta: ', num2str(max(deltas)));
%     title (text, 'FontSize', 15.0);
set(gca,'looseInset',[0 0 0 0]);
    xlabel ('\it \rho');
    ylabel ('\it \delta');
end