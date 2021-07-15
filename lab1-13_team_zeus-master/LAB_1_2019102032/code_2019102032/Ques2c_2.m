t0 = -0.5:0.01:0.5;
N=100;
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
Y = transpose(y);
E = zeros(101,1);
L = zeros(101,1);
for p = 1:101
    E(p) = yt(p)-Y(p);
    L(p) = L(p) + (E(p)*E(p))/101;
end

 figure;plot(t0,L,'b');
 grid on;
 xlabel('time');
 ylabel('E(t)');
 title('Real Y-axis');