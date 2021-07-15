td = 1;
N =5;
A = zeros(1,N);
P = zeros(1,N);
Fs = 10000;
f0 = 50;
for ii = 1:N
    A(ii) = 1/ii;
end
yt = harmonics(A,f0,P,td,Fs);
t=0:1/Fs:td;
figure;
subplot(3,1,1);
plot(t,yt);
[t_env,env] = envelope(0.2,0.2,0.7,0.4,0.2,Fs);
subplot(3,1,2);
plot(t_env, env);
xt = yt.* env;
subplot(3,1,3);
plot(t_env,xt);
sound(yt,Fs);
pause(2.0);
sound(xt,Fs);
pause(2.0);

[t_env,env] = envelope(0.3,0.1,0.5,0.3,0.3,Fs);
figure;
subplot(3,1,1);
plot(t,yt);
subplot(3,1,2)
plot(t_env, env);
xt = yt.* env;
subplot(3,1,3);
plot(t_env,xt);
sound(yt,Fs);
pause(2.0);
sound(xt,Fs);
pause(2.0);
