Ts = 0.0002;
t_samples = 0:Ts:1;
k = length(t_samples);
x = zeros(k,1);
for n = 0:k-1
    x(n+1)= sin(2*pi*10*n*Ts);
end
y = quant(x,L,a,b);
for ii = 1:k
    e(ii) = x(ii) - y(ii);
end