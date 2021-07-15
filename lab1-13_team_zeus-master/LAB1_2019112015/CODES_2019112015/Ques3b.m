clear all
clc 
% define relevant parameters
T=1;
T1=0.1;
N=100;
a= -T1;
b=T1;
% define relevant expressions
syms x;
for v = 1:(2*N)+1
    if v> (N+1)
        xt=1;
    elseif v ==(N+1)
       xt=0;
    else
        xt=-1;
    end
 end     
% function call to find FS coefficients
F = fourierCoeff(N,T,x,xt,a,b);
% plotting
FS_idx = -N:N;
figure;stem(FS_idx,F); grid on;
ylabel('Fourier Coefficients(Ak)');
xlabel('K')
title('Real Y-axis')
hold on
figure;
stem(FS_idx,imag(F)); grid on;
ylabel('Fourier Coefficients(Ak)');
xlabel('K')
title('Imaginary Y-axis')