w = -5:0.1:5;
T = pi;
a = -T;
b = T;
syms t;
xt = cos(t);
X = continuosFT(xt,t,a,b,w);
figure;
subplot(2,2,1);
plot(w,X);grid on;
xlabel('w');
ylabel('X(jw)');
title('Real Y-axis');
subplot(2,2,2);
plot(w,imag(X));grid on;
xlabel('w');
ylabel('X(jw)');
title('imaginary Y-axis');
subplot(2,2,3);
plot(w,abs(X));grid on;
xlabel('w');
ylabel('|X(jw)|');
title('absolute value of X');
subplot(2,2,4);
plot(angle(X));grid on;
xlabel('w');
ylabel('<X(jw)');
title('phase of X');