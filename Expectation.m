function [w] = Expectation(X, k, t, mu, sigma)
n=size(X,1);
f=size(X,2);

for(i=1:n),
den=0;
for(j=1:k),

#w(i,j)=mvnpdf(X(i,:),mu(j,:),sigma(:,:,j)) * t(j);
prob=mvnpdf(X(i,:),mu(j,:),sigma(:,:,j)) * t(j);
den=den+prob;
end
for(l=1:k),
w(i,l)=(mvnpdf(X(i,:),mu(l,:),sigma(:,:,l)) * t(l))/den;
end
end
