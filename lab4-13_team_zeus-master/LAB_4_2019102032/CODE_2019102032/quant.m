function y = quant(x,L,a,b)
p = length(x);
y = zeros(p,1);
for jj = 1:L
for ii = 1:p
    if x(ii)>=(a+(jj-1)*(b-a)/L) && x(ii)<=(a+jj*(b-a)/L)
    y(ii) = a + (jj-1/2)*(b-a)/L;
    end
end
end