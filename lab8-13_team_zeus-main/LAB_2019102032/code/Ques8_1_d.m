L = 20;
w = ones(L,1);
P = zeros(L,1);
x = zeros(L,1);
n = 0:L-1;
N = 1000;
for ii = 1:length(n)
    
    P(ii) = cos((ii-1)*(4/4)*pi) + cos((ii-1)*(4/4)*pi);
    x(ii) = P(ii)*w(ii);
end
y=fft(x,N);
k= 0:N-1;
figure;
subplot(3,1,1);
plot(k,abs(y));
title("DFT L=20 'w1=ws/8,w2=3ws/8'");
xlabel("N");
ylabel("Magnitude of x[n]");
grid on;

L =50;
w = ones(L,1);
P = zeros(L,1);
x = zeros(L,1);
n = 0:L-1;
N = 1000;
for ii = 1:length(n)
    
    P(ii) = cos((ii-1)*(1/4)*pi) + cos((ii-1)*(3/4)*pi);
    x(ii) = P(ii)*w(ii);
end
y=fft(x,N);
k= 0:N-1;
subplot(3,1,2);
plot(k,abs(y));
title("DFT L=50 'w1=ws/8,w2=3ws/8'");
xlabel("N");
ylabel("Magnitude of x[n]");
grid on;


L = 100;
w = ones(L,1);
P = zeros(L,1);
x = zeros(L,1);
n = 0:L-1;
N = 1000;
for ii = 1:length(n)
    
    P(ii) = cos((ii-1)*(1/4)*pi) + cos((ii-1)*(3/4)*pi);
    x(ii) = P(ii)*w(ii);
end
y=fft(x,N);
k= 0:N-1;
subplot(3,1,3);
plot(k,abs(y));
title("DFT L=100 'w1=ws/8,w2=3ws/8'");
xlabel("N");
ylabel("Magnitude of x[n]");
grid on;
