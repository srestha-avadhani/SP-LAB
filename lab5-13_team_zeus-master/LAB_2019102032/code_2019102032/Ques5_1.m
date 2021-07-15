td = 4;
N =2;
A = zeros(1,N);
P = zeros(1,N);
F = zeros(1,N);
F(1) = 350;
F(2) = 440;
Fs = 10000;
ts = 0:1/Fs:(1/Fs)*500;
for ii = 1:N
    A(ii) = 0.5;
end
xt = SumOfSines(A,F,P,td,Fs);
figure;subplot(3,1,1);
plot(ts,xt(1:501));grid on;
xlabel('time duration');
ylabel('x1[n]');
title('combined signal');

td = 0.5;
Fs = 10000;
t = 0:1/Fs:td;
N =2;
A = zeros(1,N);
P = zeros(1,N);
F = zeros(1,N);
z1 = zeros(1,length(t));
F(1) = 420;
F(2) = 620;
for ii = 1:N
    A(ii) = 0.5;
end
xt = SumOfSines(A,F,P,td,Fs);
b1 = xt;
x2 = [b1,z1,b1,z1,b1,z1,b1,z1];
subplot(3,1,2);
plot(ts,x2(1:501));grid on;
xlabel('time duration');
ylabel('x2[n]');
title('combined signal');

td = 2;
Fs = 10000;
t = 0:1/Fs:td;
N =2;
A = zeros(1,N);
P = zeros(1,N);
F = zeros(1,N);
z2 = zeros(1,length(t));
F(1) = 440;
F(2) = 480;
for ii = 1:N
    A(ii) = 0.5;
end
xt = SumOfSines(A,F,P,td,Fs);
b2 = xt;
x3 = [b2,z2,b2,z2,b2,z2,b2,z2];
subplot(3,1,3);
plot(ts,x3(1:501));grid on;
xlabel('time duration');
ylabel('x3[n]');
title('combined signal');
sound(xt,Fs);
pause(5.0);
sound(x2,Fs);
pause(5.0);
sound(x3,Fs);
pause(5.0);