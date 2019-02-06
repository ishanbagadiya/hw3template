%The function implemets the sigmodi function to calculate probability

function [p] = sigmoidProb(y, x, w)

prob=1.0 ./ (1.0 + exp(-w*x'));
for (i = 1: length(y)),
p=prob.^y(i) .* (1-prob).^(1-y(i));
%p=prob.^y .* (1-prob).^(1-y);
end
end

%x.^y * (1-x).^(1-y)