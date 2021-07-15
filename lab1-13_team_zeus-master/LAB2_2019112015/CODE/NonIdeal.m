function B = NonIdeal(A,F,G,a)
p = length(A);
B = zeros(1,p);
for ii = 1:p
    B(ii) =A(ii) * (G/(a+F(ii)*1j));
end
end