function [k] = ChooseK(X, restarts, maxK)
for(k=1:maxK),
bic1=0;
for(res=1:restarts),
[idx,C]=kmeans(X,k);
bic1(res)=BIC(X, C, idx, k) ; 
end
bic(k)=max(bic1);
end
[k]=find(bic==max(bic));
[k]=max(k);
end

