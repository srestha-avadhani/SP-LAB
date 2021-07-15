function xt = harmonics(A,f0,P,td,Fs)
for k = 1:length(A)
    F(k) = k*f0;
end
xt = SumOfSines(A,F,P,td,Fs);
end