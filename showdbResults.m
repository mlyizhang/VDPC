function Clust = showdbResults(Clust,data)
figure;
x=data(:,1);
y=data(:,2);
for i=1:max(Clust)
    hold on
    scatter(x(Clust==i),y(Clust==i),'filled');
end
%plot the noise
hold on
scatter(x(Clust==100),y(Clust==100),'*')
box on;

end