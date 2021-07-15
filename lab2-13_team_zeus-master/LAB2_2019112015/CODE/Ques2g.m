clear all
clc
T=2*pi;
N = 20;
t0 = -2*T:0.01:2*T;
wc=0.5;
a= 0;
b=2*pi; 
syms t;
xt = sin(2*t) + cos(3*t) ;
M = length(t0);
K = floor(M/4);
yt = zeros(M,1);
nz_idx = K + 1: 3*K +1;
yt(nz_idx) = 0.25 - abs(t0(nz_idx));
A = fourierCoeff(N,T,t,xt,a,b);
X = partialfouriersum(A,T,t0);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
k= -N:N;
F = zeros(1,2*N+1);
for ii = 1:2*N+1
    F(ii) = k(ii)*2*pi/T;
end
disp(F)
B1 = LPF(A,F,wc);
disp(B1)
Y1 = partialfouriersum(B1,T,t0);
B2 = HPF(A,F,wc);
disp(B2)
Y2 = partialfouriersum(B2,T,t0);
B3 = NonIdeal(A,F,1,1);
disp(B3)
Y3 = partialfouriersum(B3,T,t0);
figure('Name','wc = 0.5, G =1 , a =1','NumberTitle','off')
subplot(2,2,1),
plot(t0,X,'b');
grid on;
xlabel('time');
ylabel('x(t)');
title('Original');
subplot(2,2,2),
plot(t0,Y1,'b');
grid on;
xlabel('time');
ylabel('x(t)');
title('LOW PASS');
% fprintf('-----');
% disp(yt)
% disp(x)
subplot(2,2,3),
plot(t0,Y2,'b');
grid on;
xlabel('t');
ylabel('x(t)');
title('HIGH PASS');
subplot(2,2,4),
plot(t0,Y3,'b');grid on;
xlabel('t');
ylabel('x(t)');
title('NON-IDEAL');
figure;
plot(t0,imag(Y3),'b');grid on;
xlabel('t');
ylabel('x(t)');
title('NON-IDEAL IMAGINARY');