t_fine = 0:0.001:2;
xt = sin(5*pi*t_fine) + cos(10*pi*t_fine);
Ts = 0.1;
t_samples = 0:Ts:2;
k = length (t_samples);
x =zeros(1,k);
for n = 0:k-1
    x(n+1) = sin(5*pi*n*Ts) + cos(10*pi*n*Ts);
end
figure('NumberTitle', 'off', 'Name', 'Question 1');
subplot(1,2,2);
stem(t_samples,x);grid on;
xlabel('nTs');
ylabel('x[n]');
title('discrete-time samples of x(t)');
subplot(1,2,1);
plot(t_fine,xt);grid on;
xlabel('t');
ylabel('x(t)');
title('continuous time signal x(t)');
