function [sigma] = MaximizeCovariance(X, k, w, mu)
for(i = 1:k),
Nk= sum(w(:,i));
sum1=0;
for(j=1:size(X,1)),
sub(:,:,j)=w(j,i)*(X(j,:)- mu(i,:))'*(X(j,:)- mu(i,:));

end 
for(j=1:size(X,1)),
sum1=sum1 + sub(:,:,j);
end
sigma(:,:,i)=sum1/Nk;
end
end



