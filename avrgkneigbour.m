function avgk = avrgkneigbour(k,DM)
for i=1:size(DM,1)
    DM(i,i)=inf;
DMmin=sort(DM(i,:),2,'ascend');
DMmin5=DMmin(1:k);
avgk(i)=mean(DMmin5);

end
end
