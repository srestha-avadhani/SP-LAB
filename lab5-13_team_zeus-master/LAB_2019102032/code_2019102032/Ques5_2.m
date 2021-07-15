td = 1;
N =5;
A = zeros(1,N);
P = zeros(1,N);
Fs = 10000;
f0 = 50;
for ii = 1:N
    A(ii) = 1/(ii);
end
yt1 = harmonics(A,f0,P,td,Fs);
figure;
subplot(2,1,1);
plot(yt1);
xlabel('time duration');
ylabel('note of f0');
title('N=5  f0 =50 ak =1/k');
soundsc(yt1,Fs);
pause(2.0);

td = 1;
N =5;
A = zeros(1,N);
P = zeros(1,N);
Fs = 10000;
f0 = 50;
for ii = 1:N
    A(ii) = 1/(ii)^2;
end
yt2 = harmonics(A,f0,P,td,Fs);
subplot(2,1,2);
plot(yt2);
xlabel('time duration');
ylabel('note of f0');
title('N=5  f0 =50 ak =1/k^2');
soundsc(yt2,Fs);
pause(2.0)


td = 1;
N =10;
A = zeros(1,N);
P = 2*pi*rand(1,N);
Fs = 10000;
f0 = 100;
ts = 0:1/Fs:500/Fs;
for ii = 1:N
    A(ii) = 1/ii;
end
yt = harmonics(A,f0,P,td,Fs);
x1 = yt;
figure;subplot(4,3,1);
plot(ts,x1(1:501));grid on;
xlabel('time duration');
ylabel('note of f0');
title('N=10  f0 =100 ak =1/k');
soundsc(x1,Fs);
pause(2.0);

td = 1;
N =10;
A = zeros(1,N);
P = zeros(1,N);
Fs = 10000;
f0 = 150;
for ii = 1:N
    A(ii) = 1/ii;
end
yt = harmonics(A,f0,P,td,Fs);
x2 = yt;
subplot(4,3,2);
plot(ts,x2(1:501));grid on;
xlabel('time duration');
ylabel('note of f0');
title('N=10  f0 = 150 ak = 1/k');
soundsc(x2,Fs);
pause(2.0);

td = 1;
N =10;
A = zeros(1,N);
P = zeros(1,N);
Fs = 10000;
f0 = 200;
for ii = 1:N
    A(ii) = 1/ii;
end
yt = harmonics(A,f0,P,td,Fs);
x3 = yt;
subplot(4,3,3);
plot(ts,x3(1:501));grid on;
xlabel('time duration');
ylabel('note of f0');
title('N=10 f0 =200 ak = 1/k');
soundsc(x3,Fs);
pause(2.0);

td = 1;
N =15;
A = zeros(1,N);
P = zeros(1,N);
Fs = 10000;
f0 = 100;
for ii = 1:N
    A(ii) = 1/ii;
end
yt = harmonics(A,f0,P,td,Fs);
x4 = yt;
subplot(4,3,4);
plot(ts,x4(1:501));grid on;
xlabel('time duration');
ylabel('note of f0');
title('N=15 f0 = 100  ak =1/k');
soundsc(x4,Fs);
pause(2.0);

td = 1;
N =15;
A = zeros(1,N);
P = zeros(1,N);
Fs = 10000;
f0 = 150;
for ii = 1:N
    A(ii) = 1/ii;
end
yt = harmonics(A,f0,P,td,Fs);
x5 = yt;
subplot(4,3,5);
plot(ts,x5(1:501));grid on;
xlabel('time duration');
ylabel('note of f0');
title('N=15 f0 = 150 ak = 1/k');
soundsc(x5,Fs);
pause(2.0);

td = 1;
N =15;
A = zeros(1,N);
P = zeros(1,N);
Fs = 10000;
f0 = 200;
for ii = 1:N
    A(ii) = 1/ii;
end
yt = harmonics(A,f0,P,td,Fs);
x6 = yt;
subplot(4,3,6);
plot(ts,x6(1:501));grid on;
xlabel('time duration');
ylabel('note of f0');
title('N=15 f0 = 200 ak =1/k');
soundsc(x6,Fs);
pause(2.0);

td = 1;
N =10;
A = zeros(1,N);
P = zeros(1,N);
Fs = 10000;
f0 = 100;
ts = 0:1/Fs:500/Fs;
for ii = 1:N
    A(ii) = 1/(ii)^2;
end
yt = harmonics(A,f0,P,td,Fs);
x7 = yt;
subplot(4,3,7);
plot(ts,x7(1:501));grid on;
xlabel('time duration');
ylabel('note of f0');
title('N=10 f0 =100 ak =1/k^2');
soundsc(x7,Fs);
pause(2.0);

td = 1;
N =10;
A = zeros(1,N);
P = zeros(1,N);
Fs = 10000;
f0 = 150;
for ii = 1:N
    A(ii) = 1/(ii)^2;
end
yt = harmonics(A,f0,P,td,Fs);
x8 = yt;
subplot(4,3,8);
plot(ts,x8(1:501));grid on;
xlabel('time duration');
ylabel('note of f0');
title('N=10  f0 = 150 ak =1/k^2');
soundsc(x8,Fs);
pause(2.0);

td = 1;
N =10;
A = zeros(1,N);
P = zeros(1,N);
Fs = 10000;
f0 = 200;
for ii = 1:N
    A(ii) = 1/(ii)^2;
end
yt = harmonics(A,f0,P,td,Fs);
x9 = yt;
subplot(4,3,9);
plot(ts,x9(1:501));grid on;
xlabel('time duration');
ylabel('note of f0');
title('N=10 f0 =200  ak = 1/k^2');
soundsc(x9,Fs);
pause(2.0);

td = 1;
N =15;
A = zeros(1,N);
P = zeros(1,N);
Fs = 10000;
f0 = 100;
for ii = 1:N
    A(ii) = 1/(ii)^2;
end
yt = harmonics(A,f0,P,td,Fs);
x10 = yt;
subplot(4,3,10);
plot(ts,x10(1:501));grid on;
xlabel('time duration');
ylabel('note of f0');
title('N=15 f0 = 100  ak = 1/k^2');
soundsc(x10,Fs);
pause(2.0);

td = 1;
N =15;
A = zeros(1,N);
P = zeros(1,N);
Fs = 10000;
f0 = 150;
for ii = 1:N
    A(ii) = 1/(ii)^2;
end
yt = harmonics(A,f0,P,td,Fs);
x11 = yt;
subplot(4,3,11);
plot(ts,x11(1:501));grid on;
xlabel('time duration');
ylabel('note of f0');
title('N=15 f0 = 150 ak=1/k^2');
soundsc(x11,Fs);
pause(2.0);

td = 1;
N =15;
A = zeros(1,N);
P = zeros(1,N);
Fs = 10000;
f0 = 200;
for ii = 1:N
    A(ii) = 1/(ii)^2;
end
yt = harmonics(A,f0,P,td,Fs);
x12 = yt;
subplot(4,3,12);
plot(ts,x12(1:501));grid on;
xlabel('time duration');
ylabel('note of f0');
title('N=15 f0 = 200  ak = 1/k^2');
soundsc(x12,Fs);
pause(2.0);