function xt = SumOfSines(A,F,P,td,Fs)
N = length(A);
t = 0:1/Fs:td;
R = length(t);
xt = zeros(1,R);
for ii = 1:N
    xt = xt + (A(ii)*(sin((2*pi*F(ii)*(t)) + P(ii))));
end
end