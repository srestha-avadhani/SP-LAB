p = 0.8;
figure('NumberTitle', 'off', 'Name', 'Pole-Zero plot for P=0.8');
zplane(0,-p);
b = 1;
a = [1,p];
n = 1001;
figure('NumberTitle', 'off', 'Name', 'Frequency Response for P=0.8');
freqz(b,a,n);
figure('NumberTitle', 'off', 'Name', 'Impulse Response for P=0.8');
impz(b,a);


p = -0.8;
figure('NumberTitle', 'off', 'Name', 'Pole-Zero plot for P=-0.8');
zplane(0,-p);
b = 1;
a = [1,p];
n = 1001;
figure('NumberTitle', 'off', 'Name', 'Frequency Response for P=-0.8');
freqz(b,a,n);
figure('NumberTitle', 'off', 'Name', 'Impulse Response for P=-0.8');
impz(b,a);


p = 0.1;
figure('NumberTitle', 'off', 'Name', 'Pole-Zero plot for P=0.1');
zplane(0,-p);
b = 1;
a = [1,p];
n = 1001;
figure('NumberTitle', 'off', 'Name', 'Frequency Response for P=0.1');
freqz(b,a,n);
figure('NumberTitle', 'off', 'Name', 'Impulse Response for P=0.1');
impz(b,a);

