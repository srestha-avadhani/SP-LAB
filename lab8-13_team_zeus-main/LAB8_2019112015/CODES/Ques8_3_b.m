N=5;
L=5;
x = [ones(L,1);zeros(N-L,1)];
x = x';
X = directdft(x,N);
k = 0:N-1;
figure;
subplot(3,3,1)
plot(k,X)
title("Magnitude")
subplot(3,3,2)
plot(k,(abs(X)));
title("Absolute Magnitude")
subplot(3,3,3)
plot(k,angle(X));
title("Phase")

N=10;
L=5;
x = [ones(L,1);zeros(N-L,1)];
x = x';
X = directdft(x,N);
k = 0:N-1;
subplot(3,3,4)
plot(k,X);
title("Magnitude")
subplot(3,3,5)
plot(k,(abs(X)));
title("Absolute Magnitude")
subplot(3,3,6)
plot(k,angle(X));
title("Phase")

N=100;
L=5;
x = [ones(L,1);zeros(N-L,1)];
x = x';
X = directdft(x,N);
k = 0:N-1;
subplot(3,3,7)
plot(k,X);
title("Magnitude")
subplot(3,3,8)
plot(k,(abs(X)));
title("Absolute Magnitude")
subplot(3,3,9)
plot(k,angle(X));
title("Phase")

w0 = 3*pi/10;
N1 = 20;
n = 1:N1;
x = sin(w0*n);
X = directdft(x,N1);
Xk = fft(x,N1);
N = zeros(N1);
for k = 1:N1
    N(k) = k-1;
end
figure;
subplot(3,3,1)
plot(N,x);
title("Magnitude")
subplot(3,3,2)
plot(N,abs(X));
title("Absolute Magnitude")
subplot(3,3,3)
plot(N,angle(X));
title("Phase")


w0 = 3*pi/10;
N1 = 20;
n = 1:N1;
x = cos(w0*n);
X = directdft(x,N1);
Xk = fft(x,N1);
N = zeros(N1);
for k = 1:N1
    N(k) = k-1;
end
subplot(3,3,4)
plot(N,x);
title("Magnitude")
subplot(3,3,5)
plot(N,abs(X));
title("Absolute Magnitude")
subplot(3,3,6)
plot(N,angle(X));
title("Phase")

w0 = 3*pi/10;
N1 = 20;
n = 1:N1;
x = exp(1j*w0*n);
X = directdft(x,N1);
Xk = fft(x,N1);
N = zeros(N1);
for k = 1:N1
    N(k) = k-1;
end
subplot(3,3,7)
plot(N,x);
title("Magnitude")
subplot(3,3,8)
plot(N,abs(X));
title("Absolute Magnitude")
subplot(3,3,9)
plot(N,angle(X));
title("Phase")

w0 = 3*pi/10;
N1 = 20;
n = 1:N1;
x = sin(w0*(n-1));
X = directdft(x,N1);
Xk = fft(x,N1);
N = zeros(N1);
for k = 1:N1
    N(k) = k-1;
end
figure;
subplot(3,3,1)
plot(N,x);
title("Magnitude")
subplot(3,3,2)
plot(N,abs(X));
title("Absolute Magnitude")
subplot(3,3,3)
plot(N,angle(X));
title("Phase")


w0 = 3*pi/10;
N1 = 20;
n = 1:N1;
x = cos(w0*(n-2));
X = directdft(x,N1);
Xk = fft(x,N1);
N = zeros(N1);
for k = 1:N1
    N(k) = k-1;
end
subplot(3,3,4)
plot(N,x);
title("Magnitude")
subplot(3,3,5)
plot(N,abs(X));
title("Absolute Magnitude")
subplot(3,3,6)
plot(N,angle(X));
title("Phase")

w0 = 3*pi/10;
N1 = 20;
n = 1:N1;
x = exp(1j*w0*(n-3));
X = directdft(x,N1);
Xk = fft(x,N1);
N = zeros(N1);
for k = 1:N1
    N(k) = k-1;
end
subplot(3,3,7)
plot(N,x);
title("Magnitude")
subplot(3,3,8)
plot(N,abs(X));
title("Absolute Magnitude")
subplot(3,3,9)
plot(N,angle(X));
title("Phase")

N=10;
x = [1;zeros(N-1,1)];
x = x';
X = directdft(x,N);
k = 0:N-1;
figure;
subplot(3,1,1)
plot(k,X)
title("Magnitude")
subplot(3,1,2)
plot(k,(abs(X)));
title("Absolute Magnitude")
subplot(3,1,3)
plot(k,angle(X));
title("Phase")

N = 20;
for n = 1:N
x(n) = (0.9)^(n);
end
X = directdft(x,N);
k = 0:N-1;
figure;
subplot(3,1,1)
plot(k,X)
title("Magnitude")
subplot(3,1,2)
plot(k,(abs(X)));
title("Absolute Magnitude")
subplot(3,1,3)
plot(k,angle(X));
title("Phase")
X = directdft(x,N);
k = 0:N-1;
figure;
subplot(3,1,1)
plot(k,X)
title("Magnitude")
subplot(3,1,2)
plot(k,(abs(X)));
title("Absolute Magnitude")
subplot(3,1,3)
plot(k,angle(X));
title("Phase")





