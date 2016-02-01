function [bic] = BIC(X, C, idx, k)
M=size(X,2); #no of features
R=size(X,1); #total number of data points
p_k= k*(M+1);

sum_norm=0;
for(j=1:k),
diff=0;
match=find(idx==j);

diff=X(match,:)- C(j,:);
for(l=1:size(diff,1)),
norm_sq=norm(diff(l,:))^2;
sum_norm=sum_norm + norm_sq;
end
end
sigma_square = (1/(M*(R-k))) * sum_norm;
sum=0;
for(i=1:k),
R_i=length(find(idx==i));
L = -((R_i/2) * log(2* pi)) - (((R_i * M)/2) * log(sigma_square)) - ((R_i - k)/2) + (R_i * log(R_i)) - (R_i * log(R));
sum = sum + L;

end

[bic]=sum - (p_k/2)* log(R);

end
