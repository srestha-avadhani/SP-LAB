filename = 'sp.wav';
[Y, FS] = audioread(filename);
k= length(Y);
disp(k);
disp(FS);
b = 128; %from properties of file;
nadc = b*(1000)/FS;
disp(nadc);
nql = 2^nadc;
disp(nql);
time = k*(1/FS);
disp(time);
sound(Y, FS);
pause(1.0);
sound(Y, 0.9*FS);
pause(1.0);
sound(Y, 0.8*FS);
pause(1.0);
sound(Y, 0.7*FS);
pause(1.0);
sound(Y, 1.2*FS);
pause(1.0);
sound(Y, 1.4*FS);
pause(1.0);
sound(Y, 1.6*FS);
