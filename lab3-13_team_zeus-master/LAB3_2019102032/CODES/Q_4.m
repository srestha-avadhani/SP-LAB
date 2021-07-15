t_fine = 0:0.001:2;
xt = sin(5*pi*t_fine);
Ts = 0.1;
t_samples = 0:Ts:2;
k = length (t_samples);
x =zeros(1,k); 
n = zeros(1,k);
n = t_samples/Ts;
for ii = 0:k-1
    x(ii+1) = sin(5*pi*n(ii+1)*Ts);
end
xn = x;
xr = sinc_interp(n,xn,Ts,t_fine);
subplot(2,2,1);
plot(t_fine,xr);
xlabel('t');
ylabel('reconstructed x(t)');
title('Ts=0.1');
hold on;
stem(t_samples,x);
hold off;

t_fine = 0:0.001:2;
xt = sin(5*pi*t_fine);
Ts = 0.2;
t_samples = 0:Ts:2;
k = length (t_samples);
x =zeros(1,k); 
n = zeros(1,k);
n = t_samples/Ts;
for ii = 0:k-1
    x(ii+1) = sin(5*pi*n(ii+1)*Ts);
end
xn = x;
xr = sinc_interp(n,xn,Ts,t_fine);
subplot(2,2,2);
plot(t_fine,xr);
title('Ts=0.2');
xlabel('t');
ylabel('reconstructed x(t)');
hold on;
stem(t_samples,x);
hold off;

t_fine = 0:0.001:2;
xt = sin(5*pi*t_fine);
Ts = 0.3;
t_samples = 0:Ts:2;
k = length (t_samples);
x =zeros(1,k); 
n = zeros(1,k);
n = t_samples/Ts;
for ii = 0:k-1
    x(ii+1) = sin(5*pi*n(ii+1)*Ts);
end
xn = x;
xr = sinc_interp(n,xn,Ts,t_fine);
subplot(2,2,3);
plot(t_fine,xr);
title('Ts=0.3');
xlabel('t');
ylabel('reconstructed x(t)');
hold on;
stem(t_samples,x);
hold off;

t_fine = 0:0.001:2;
xt = sin(5*pi*t_fine);
Ts = 0.4;
t_samples = 0:Ts:2;
k = length (t_samples);
x =zeros(1,k); 
n = zeros(1,k);
n = t_samples/Ts;
for ii = 0:k-1
    x(ii+1) = sin(5*pi*n(ii+1)*Ts);
end
xn = x;
xr = sinc_interp(n,xn,Ts,t_fine);
subplot(2,2,4);
plot(t_fine,xr);
title('Ts=0.4');
xlabel('t');
ylabel('reconstructed x(t)');
hold on;
stem(t_samples,x);
hold off;
