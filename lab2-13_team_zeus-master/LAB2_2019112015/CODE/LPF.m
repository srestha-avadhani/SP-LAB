function B = LPF(A,F,wc)
p = length(A);
B = zeros(1,p);
for ii = 1:p
    if abs(F(ii)) < wc
        B(ii) = A(ii);
    else
        B(ii) = 0;
    end
end
end