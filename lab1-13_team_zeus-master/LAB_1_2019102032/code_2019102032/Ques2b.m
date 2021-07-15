clear all
clc
t0 = -0.5:0.01:0.5;
N=10;
T=1;
a= -1/4;
b=1/4; 
syms t;
xt = 1/4- abs(t);
M = length(t0);
K = floor(M/4);
yt = zeros(M,1);
nz_idx = K + 1: 3*K +1;
yt(nz_idx) = 0.25 - abs(t0(nz_idx));
A = fourierCoeff(N,T,t,xt,a,b);
y = partialfouriersum(A,T,t0);
figure;plot(t0,y,'r',t0,yt,'b');
grid on;
xlabel('time');
ylabel('x(t)');
title('Real Y-axis');
figure;plot(t0,imag(y),'r',t0,imag(yt),'b');
grid on;
xlabel('time');
ylabel('x(t)');
title('Imaginary Y-axis');
fprintf('-----');
disp(yt)
disp(y)
