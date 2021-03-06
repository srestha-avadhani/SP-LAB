fs = 10000;
fc = 2000;
d1 = 1;
d2 = 40;
N = 12;
n = 500;
[b1,a1] = butter(N,fc/fs/2);
[b2,a2] = cheby1(N,d1,fc/fs/2);
[b3,a3] = cheby2(N,d2,fc/fs/2);
[b4,a4] = ellip(N,d1,d2,fc/fs/2);
[h1,t1] = impz(b1,a1,n);
[h2,t2] = impz(b2,a2,n);
[h3,t3] = impz(b3,a3,n);
[h4,t4] = impz(b4,a4,n);
figure;subplot(2,2,1);
plot(h1);grid on;
xlabel('samples');
ylabel('impulse response');
title('butterworth filter');
subplot(2,2,2);
plot(h2);grid on;
xlabel('samples');
ylabel('impulse response');
title('chebyshev1 filter');
subplot(2,2,3);
plot(h3);grid on;
xlabel('samples');
ylabel('impulse response');
title('chebyshev2 filter');
subplot(2,2,4);
plot(h4);grid on;
xlabel('samples');
ylabel('impulse response');
title('elliptical filter');

figure;subplot(2,2,1);
plot(angle(h1));grid on;
xlabel('samples');
ylabel('phase response');
title('butterworth filter');
subplot(2,2,2);
plot(angle(h2));grid on;
xlabel('samples');
ylabel('phase response');
title('chebyshev1 filter');
subplot(2,2,3);
plot(angle(h3));grid on;
xlabel('samples');
ylabel('phase response');
title('chebyshev2 filter');
subplot(2,2,4);
plot(angle(h4));grid on;
xlabel('samples');
ylabel('phase response');
title('elliptical filter');