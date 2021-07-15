Ts = 0.0002;
a = -1;
b = 1;
t_samples = 0:Ts:1;
k = length(t_samples);
x = zeros(k,1);
for n = 0:k-1
    x(n+1)= sin(2*pi*10*n*Ts);
end
e = zeros(k,1);
mae = (zeros(8,1));
sqnr = zeros(8,1);
y = zeros(8,k);
figure('NumberTitle', 'off', 'Name', 'Quantised signals and Errors for different L- 2(C)');
for B = 1:8
L = 2^B;
y = quant(x,L,a,b);
e = x - y;
sqnr_num = 0;
sqnr_den = 0;
for D =1:k
sqnr_num = sqnr_num + (x(D))^2;
sqnr_den = sqnr_den + ((e(D)^2)^2);
end
sqnr(B) = sqnr_num/sqnr_den;
t=0;
for jj = 1:k
if abs(e(jj))>t
    t= e(jj);
end
end
mae(B) =t;
S= 2^B;
subplot(8,3,3*B-2)
stem(t_samples,x);
xlabel('time');
ylabel('x(t)');
title(['L=',num2str(S)]);
subplot(8,3,3*B-1);
stem(t_samples,y,'bo');
xlabel('time');
ylabel('quntized x(t)');
title(['L=',num2str(S)]);
subplot(8,3,3*B);
stem(t_samples,e,'r-');
xlabel('time');
ylabel('e(t)');
title(['L=',num2str(S)]);
end
C =1:8;
figure('NumberTitle', 'off', 'Name', 'MAE for varying no of Quantization Levels-2(D)');
stem(C,mae,'-r');
figure('NumberTitle', 'off', 'Name', 'SQNR for varying no of Quantization Levels-2(E)');
stem(C,sqnr,'bo');