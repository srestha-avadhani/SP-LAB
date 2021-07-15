t_fine = 0:0.001:2;
xt = sin(5*pi*t_fine) + cos(10*pi*t_fine);
Ts = 0.1;
t_samples = 0:Ts:2;
k = length (t_samples);
x =zeros(1,k);
for n = 0:k-1
    x(n+1) = sin(5*pi*n*Ts) + cos(10*pi*n*Ts);
end
figure('NumberTitle', 'off', 'Name','Question 1');
 subplot(2,2,1);
 stem(t_samples,x);grid on;
 xlabel('nTs');
 ylabel('x[n]');
 title('discrete-time samples of x(t)');
 
 %%%%%%%%%%% Zero Order Hold %%%%%%%%%%%%
subplot(2,2,2);
h = interp1(t_samples,x,t_fine,'nearest');
plot(t_fine,h);
xlabel('t');
ylabel('x(t)with zero hold');
title('Zero order hold signal');

%%%%%%%%% Linear Interpolation %%%%%%%%%%%

subplot(2,2,3);
h = interp1(t_samples,x,t_fine,'linear');
plot(t_fine,h);
xlabel('t');
ylabel('x(t)with linear interpolation');
title('linear Interpolation');

%%%%%%%%% Sinc Interpolation %%%%%%%%%%%

subplot(2,2,4);
xr = sinc_interp((t_samples/Ts),x,Ts,t_fine);
plot(t_fine,xr);
xlabel('t');
ylabel('x(t)with sinc interpolation');
title('sinc Interpolation');