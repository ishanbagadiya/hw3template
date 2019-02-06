%Function calculates log sum of probabilities
function [ls] = logSum(x)
[ls]=log(sum(exp(x)))
end
