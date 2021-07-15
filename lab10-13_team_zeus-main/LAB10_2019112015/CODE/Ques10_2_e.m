fs = 8192; 
Ts = 1/fs;
fo = 1024;
n = 0:73112;

w01 = pi/4;
b01 = 1/((1-exp(1i*w01))*(1-exp(-1i*w01)));
a1 = 1;
b1 = [b01,-b01*(exp(1i*w01)+exp(-1i*w01)),b01];

r0 = 0.99;
b02 = 1;
b2 = [ b02,-b02*(exp(1i*w01)+exp(-1i*w01)),b02];
a2 = [1,-r0*(exp(1i*w01)+exp(-1i*w01)),+r0^2];
s = sin(2*pi*fo*n*Ts);
x = y + s';
y1 = filter(b1,a1,x);
y2 = filter(b2,a2,x);
audiowrite('FIR.wav',y1,fs);
audiowrite('IIR.wav',y2,fs);
sound(y1,fs);
pause(10.0);
sound(y2,fs);