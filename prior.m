%The function calculates the prior probability using the training labels.

function [p] = prior(yTrain)
classes=unique(yTrain);
for i = 1:length(classes),
total=length(yTrain);
p(i)=sum(yTrain==classes(i))/total;
end
[p]=p';
end
