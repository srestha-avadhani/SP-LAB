b = [1];
a = [1,-0.5,0.2,-0.1,0.007,0.14,0.15];
figure('NumberTitle', 'off', 'Name', 'Pole-Zero plot for given H(Z)');
zplane(b,a)
figure('NumberTitle', 'off', 'Name', 'Frequency Response for given H(Z)');
freqz(b,a);