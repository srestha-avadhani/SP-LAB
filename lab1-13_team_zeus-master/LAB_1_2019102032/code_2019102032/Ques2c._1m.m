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
A = fourieCoeff(N,T,t,xt,a,b);
y = partialfouriersum(A,T,t0);
Y = transpose(y);
E = zeros(101,1);
for ii = 1:101
    E(ii) = yt(ii)-Y(ii);
end
 figure;plot(t0,E,'r');
 grid on;
xlabel('time');
ylabel('A(t)');
title('Real Y-axis');
disp(y);
disp(yt);