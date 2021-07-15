function [N,ROC,C,S] = roc_cs(p)
sx = length(p);
for ii = 1:sx
    p(ii) = abs(p(ii));
end
B = zeros(1,sx);
P = sort(p);
B(1) = P(1);
jj =1;
for ii = 1:sx-1
   if P(ii)~=P(ii+1)
       jj = jj+1;
       B(jj) = P(ii+1);
   end
end
if B(1)~=0
D= zeros(1,jj);
for ii = 1:jj
    D(ii) = B(ii);
end
else
    D = zeros(1,jj-1);
    for ii = 1:jj-1
       D(ii) = B(ii+1); 
    end
end
N = length(D)+1;
ROC = zeros(N,2);
C = zeros(N,1);
S = zeros(N,1);
ROC(1,1) = 0;
ROC(N,2) = inf;
k =1;
for ii = 1:N-1
    ROC(ii,2) = D(k);
    ROC(ii+1,1) = D(k);
    k=k+1;
end
C(N) = 1;
if ROC(ii,2)>1 
    S(1) = 1;
end
end