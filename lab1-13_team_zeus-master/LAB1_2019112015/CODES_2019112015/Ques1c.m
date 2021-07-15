clear all
clc 
% define relevant parameters
N=10;
T=2*pi;
a= 0;
b=2*pi;
w0=2*pi/T;
% define relevant expressions
syms t;
xt = (sin(w0*t));
% function call to find FS coefficients
F = fourierCoeff(N,T,t,xt,a,b);
% plotting
FS_idx = -N:N;
figure; stem(FS_idx,(F)); grid on;
xlabel('Fourier Coefficients(Ak)');
ylabel('K')
title('Real Y-axis')
hold on;
figure; stem(FS_idx,imag(F)); grid on;
xlabel('Fourier Coefficients(Ak)');
ylabel('K')
title('Imaginary Y-axis')
hold off