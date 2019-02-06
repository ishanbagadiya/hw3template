%The function implements the gaussian naive bayes using the probability density fnctn


function [t] = naiveBayesClassify(xTest, M, V, p)
no_feature=size(M,1);
no_class=size(M,2);
for(k = 1 : size(xTest,1)),
for(i = 1 : no_class),
temp=1;
for(j=1 : no_feature) ,
temp=log(normpdf(xTest(k,j),M(j,i),V(j,i)));
temp=logProd(temp);
%temp = temp * normpdf(xTest(k,j),M(j,i),V(j,i));
prob(i)=temp * p(i);
t(k)= max(prob);
end
t(k)=find(prob==max(prob));
end
end
end