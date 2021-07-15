clear all
clc 
% define relevant parameters
t0 = -0.5:0.01:0.5;
T=1;
T1=0.1;
N=100*T;
a= -T1;
b=T1;
% define relevant expressions
syms x;
for v = 1:length(t0)
    if v>50
        xt=1;
    elseif v == 50
       xt=0;
    else
        xt=-1;
    end
 end      
% function call to find FS coefficients
F = fourierCoeff(N,T,x,xt,a,b);
y = partialfouriersum(F,T,t0);
figure;plot(t0,y,'r', t0,imag(y),'b');
grid on;
xlabel('time');
ylabel('x(t)');