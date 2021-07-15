t_fine = -10:0.001:10;
xt = 1 - abs(t_fine);
Ts = 0.1;
t_samples = -1:Ts:1;
k = length (t_samples);
x =zeros(1,k);
n = zeros(1,k);
n = t_samples/Ts;
for ii = 0:k-1
    x(ii+1) = 1 - abs(n(ii+1)*Ts);
end
xn = x;
xr = sinc_interp(n,xn,Ts,t_fine);
figure('NumberTitle', 'off', 'Name', 'x[n] for Question 3');
stem(t_samples,x);