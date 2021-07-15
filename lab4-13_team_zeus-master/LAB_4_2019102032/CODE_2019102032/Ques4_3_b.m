filename = 'sp.wav';
[Y, FS] = audioread(filename);
a = -0.5;
b = 0.5;
y = zeros(8,1);
for B = 1:8
L = 2^B;
y = quant(Y,L,a,b);
sound(y,FS);
pause(2.0)
end
