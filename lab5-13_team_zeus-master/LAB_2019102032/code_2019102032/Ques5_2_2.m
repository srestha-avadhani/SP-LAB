td = 1;
N =5;
A = zeros(1,N);
P = 2*pi*rand(1,N);
Fs = 10000;
f0 = 50;
for ii = 1:N
    A(ii) = sin(pi*ii/N);
end
yt = harmonics(A,f0,P,td,Fs);
x1 = yt;
figure;subplot(2,2,1);
plot(x1);grid on;
xlabel('time duration');
ylabel('note of frequency f0');
title('ak = sin(pi*k/N)');
soundsc(x1,Fs);
pause(2.0);

td = 1;
N =5;
A = zeros(1,N);
P = zeros(1,N);
Fs = 10000;
f0 = 50;
for ii = 1:N
    A(ii) = cos(pi*ii/N);
end
yt = harmonics(A,f0,P,td,Fs);
x2 = yt;
subplot(2,2,2);
plot(x2);grid on;
xlabel('time duration');
ylabel('note of frequency f0');
title('ak = cos(pi*k/N)');
soundsc(x2,Fs);
pause(2.0);

td = 1;
N =5;
A = zeros(1,N);
P = zeros(1,N);
Fs = 10000;
f0 = 50;
for ii = 1:N
    A(ii) = ii;
end
yt = harmonics(A,f0,P,td,Fs);
x3 = yt;
subplot(2,2,3);
plot(x3);grid on;
xlabel('time duration');
ylabel('note of frequency f0');
title('ak = k');
soundsc(x3,Fs);
pause(2.0);

td = 1;
N =5;
A = zeros(1,N);
P = zeros(1,N);
Fs = 10000;
f0 = 50;
ts = 0:1/Fs:500/Fs;
for ii = 1:N
    A(ii) = 1/(ii);
end
yt = harmonics(A,f0,P,td,Fs);
x4 = yt;
subplot(2,2,4);
plot(x4);grid on;
xlabel('time duration');
ylabel('note of frequency f0');
title('ak = 1/k');
soundsc(x4,Fs);
pause(2.0);

td = 1;
N =5;
A = zeros(1,N);
P = zeros(1,N);
Fs = 10000;
f0 = 50;
ts = 0:1/Fs:500/Fs;
for ii = 1:N
    A(ii) = 1/(ii);
end
yt = harmonics(A,f0,P,td,Fs);
x1 = yt;
figure;subplot(2,2,1);
plot(ts,x1(1:501));grid on;
xlabel('time duration');
ylabel('note of frequency f0');
title('ak = 1/k');
soundsc(x1(1:501),Fs);
pause(2.0);

td = 1;
N =5;
A = zeros(1,N);
P = zeros(1,N);
Fs = 10000;
f0 = 50;
for ii = 1:N
    A(ii) = sin(pi*ii/N);
end
yt = harmonics(A,f0,P,td,Fs);
x2 = yt;
subplot(2,2,2);
plot(ts,x2(1:501));grid on;
xlabel('time duration');
ylabel('note of frequency f0');
title('ak = sin(pi*k/N)');
soundsc(x2(1:501),Fs);
pause(2.0);


td = 1;
N =5;
A = zeros(1,N);
P = zeros(1,N);
Fs = 10000;
f0 = 50;
for ii = 1:N
    A(ii) = cos(pi*ii/N);
end
yt = harmonics(A,f0,P,td,Fs);
x3 = yt;
subplot(2,2,3);
plot(ts,x3(1:501));grid on;
xlabel('time duration');
ylabel('note of frequency f0');
title('ak = cos(pi*k/N)');
soundsc(x3(1:501),Fs);
pause(2.0);

td = 1;
N =5;
A = zeros(1,N);
P = zeros(1,N);
Fs = 10000;
f0 = 50;
for ii = 1:N
    A(ii) = ii;
end
yt = harmonics(A,f0,P,td,Fs);
x4 = yt;
subplot(2,2,4);
plot(ts,x4(1:501));grid on;
xlabel('time duration');
ylabel('note of frequency f0');
title('ak = k');

soundsc(x4(1:501),Fs);