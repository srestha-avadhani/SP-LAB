td = 1;
N =5;
A = zeros(1,N);
P = 2*pi*rand(1,N);
Fs = 10000;
f0 = 50;
for ii = 1:N
    A(ii) = 1/(ii);
end
yt = harmonics(A,f0,P,td,Fs);
figure;subplot(2,1,1);
plot(yt);grid on;
xlabel('time duration');
ylabel('note of frequency f0');
title('ak = 1/k');

td = 1;
N =5;
A = zeros(1,N);
P = zeros(1,N);
Fs = 10000;
f0 = 50;
for ii = 1:N
    A(ii) = 1/(ii)^2;
end
yt = harmonics(A,f0,P,td,Fs);
subplot(2,1,2);
plot(yt);grid on;
xlabel('time duration');
ylabel('note of frequency f0');
title('ak = 1/k^2');
sound(yt,Fs);
pause(2.0);
soundsc(yt,Fs);