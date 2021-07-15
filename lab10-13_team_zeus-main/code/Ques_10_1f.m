fs = 10000;
Ts = 1/fs;
f1 = 500;
f2 = 3000;
n = 0:100;
fc = 2000;
d1 = 1;
d2 = 40;
N = 6;
[b1,a1] = butter(N,fc/fs/2);
[b2,a2] = cheby1(N,d1,fc/fs/2);
[b3,a3] = cheby2(N,d2,fc/fs/2);
[b4,a4] = ellip(N,d1,d2,fc/fs/2);

xn = sin(2*pi*f1*n*Ts) + sin(2*pi*f2*n*Ts);

y1 = filter(b1,a1,xn);
y2 = filter(b2,a2,xn);
y3 = filter(b3,a3,xn);
y4 = filter(b4,a4,xn);

figure;subplot(4,2,1);
plot(y1);grid on;
xlabel('samples');
ylabel('filtered xn');
title('butterworth filter');
subplot(4,2,2);
plot(xn);grid on;
xlabel('samples');
ylabel('xn');
title('input signal');
subplot(4,2,3);
plot(y2);grid on;
xlabel('samples');
ylabel('filtered xn');
title('chebyshev1 filter');
subplot(4,2,4);
plot(xn);grid on;
xlabel('samples');
ylabel('xn');
title('input signal');
subplot(4,2,5);
plot(y3);grid on;
xlabel('samples');
ylabel('filtered xn');
title('chebyshev2 filter');
subplot(4,2,6);
plot(xn);grid on;
xlabel('samples');
ylabel('xn');
title('input signal');
subplot(4,2,7);
plot(y4);grid on;
xlabel('samples');
ylabel('filtered xn');
title('elliptical filter');
subplot(4,2,8);
plot(xn);grid on;
xlabel('samples');
ylabel('xn');
title('input signal');