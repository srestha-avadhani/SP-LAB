t_fine = 0:0.001:2;
xt = sin(5*pi*t_fine) + cos(10*pi*t_fine);
Ts = 0.1;
t_samples = 0:Ts:2;
k = length (t_samples);
x =zeros(1,k);
for n = 0:k-1
    x(n+1) = sin(5*pi*n*Ts) + cos(10*pi*n*Ts);
end

h = interp1(t_samples,x,t_fine,'nearest');
x1 = zeros(length(t_fine),1);
for ii = 501:length(t_fine)-500
   
    x1(ii) = abs(xt(ii) -h(ii));
end
m1 = max(h);
disp(' MAE of x1 is :')
disp(m1)
h1 = interp1(t_samples,x,t_fine,'linear');
x2 = zeros(length(t_fine),1);
for ii = 501:length(t_fine)-500
   
    x2(ii) = abs(xt(ii) -h1(ii));
end
m2 = max(x2);
disp(' MAE of x2 is :')
disp(m2)

xr = sinc_interp((t_samples/Ts),x,Ts,t_fine);
x3 = zeros(length(t_fine),1);
for ii = 501:length(t_fine)-500
   
    x3(ii) = abs(xt(ii) -xr(ii));
end
m3 = max(x3);
disp(' MAE of x3 is :')
disp(m3);
