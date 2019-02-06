%The function calculates weights for logistic regression using the training data 
%and the initial weight w0.
function [w] = logisticRegressionWeights(xTrain, yTrain, w0, nIter)
no_col=size(xTrain,2);
w= zeros(no_col,1);
for(i = 1 : nIter),
expe = sigmoidProb(yTrain,xTrain,w');
gradient= xTrain' * (yTrain - expe');
w = w - (0.1 * gradient);
end
end
