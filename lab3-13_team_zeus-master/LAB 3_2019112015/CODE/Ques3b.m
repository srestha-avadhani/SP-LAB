t_fine = -10:0.001:10;
xt = 1 - abs(t_fine);
Ts = 0.05;
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
figure('NumberTitle', 'off', 'Name', 'Question 3 interpolations');
subplot(2,2,4);
plot(t_fine,xr);
t_fine = -10:0.001:10;
xt = 1 - abs(t_fine);
Ts = 0.5;
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
subplot(2,2,1);
plot(t_fine,xr);
t_fine = -10:0.001:10;
xt = 1 - abs(t_fine);
Ts = 0.2;
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
subplot(2,2,2);
plot(t_fine,xr);
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
subplot(2,2,3);
plot(t_fine,xr);