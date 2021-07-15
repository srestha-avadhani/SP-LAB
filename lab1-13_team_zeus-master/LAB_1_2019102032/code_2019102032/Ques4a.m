clear all
clc 
% define relevant parameters
N=10;
T=1;
a= -1/4;
b=1/4;
% define relevant expressions
syms t;
xt = (abs(t));
% function call to find FS coefficients
F = fourierCoeff(N,T,t,xt,a,b);
% plotting
FS_idx = -N:N;
figure;stem(FS_idx,F); grid on;
xlabel('Fourier Coefficients(Ak)');
ylabel('K')
title('Real Y-axis')
hold on
figure;
stem(FS_idx,imag(F)); grid on;
xlabel('Fourier Coefficients(Ak)');
ylabel('K')
title('Imaginary Y-axis')