w0 = 3*pi/10;
N=1:1:1001;
N1=1000:1:2000;
t1=zeros(size(N));
t2=zeros(size(N));
for i=1000:2000
    n = 1:i;
    x = exp(1j*w0*n);
    tic
    X=directdft(x,i);
    t1(i-999)=toc;
end
for i=1000:2000
    n = 1:i;
    x = exp(1j*w0*n);
    tic
    X=fft(x,i);
    t2(i-999)=toc;
end
subplot(2,1,1);
plot(N1,t1);grid on;
subplot(2,1,2);
plot(N1,t2);grid on;