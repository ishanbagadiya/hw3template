function [mu] = MaximizeMean(X, k, w)
for(i=1:k),
N_k= sum(w(:,i));
for(j=1:size(X,1))
sub_mu(j,:)= w(j,i)*X(j,:);
end
sum_mu=sum(sub_mu);
mu(i,:)=sum_mu/N_k;
end
end







