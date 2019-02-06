% The function predicts the output label using a threshold of 0.5
function [cls] = logisticRegressionClassify(xTest, w)
pred= 1.0 ./ (1.0 + exp(-xTest*w));
for(i = 1 :length(pred)),
if(pred(i)>0.5)
cls(i)=1;
else
cls(i)=0;
end
end