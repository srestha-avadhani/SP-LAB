filename = 'sp.wav';
[Y, FS] = audioread(filename);
a = -0.5;
b = 0.5;
L=8;
y = quant(Y,L,a,b);
sound(y,FS);