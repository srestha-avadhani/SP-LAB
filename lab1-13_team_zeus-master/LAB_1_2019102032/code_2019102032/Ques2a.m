clear all
clc
t0 = -0.5:0.01:0.5;
N=10;
T=1;
a= -1/4;
b=1/4; 
syms t;
xt = 1/4- abs(t);
A = fourierCoeff(N,T,t,xt,a,b);
y = partialfouriersum(A,T,t0);
figure;plot(t0,y,'r');
grid on;
xlabel('time');
ylabel('x(t)');
title('Real Y-axis');
figure;plot(t0,imag(y),'r');
grid on;
xlabel('time');
ylabel('x(t)');
title('Imaginary Y-axis');
fprintf('-----');
disp(yt)
disp(y)
