function [t] = MaximizeMixtures(k, w)
for(i = 1:k),
N_k= sum(w(:,i));
t(i)=N_k/size(w,1);
end
t=t';
end
