%the function calculates mean and variance using the training data to
%implement gausian naive bayes
function [M, V] = likelihood(xTrain, yTrain)
no_features=size(xTrain,2);
classes=unique(yTrain);
for(i = 1:no_features),
for(j=1:length(classes)),
ind=find(yTrain==classes(j));
M(i,j)=mean(xTrain(ind,i));
V(i,j)=var(xTrain(ind,i));
end
end 
end
