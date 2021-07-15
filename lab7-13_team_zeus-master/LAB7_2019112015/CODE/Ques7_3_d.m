r1 = 0.4;
t = pi/3;
b1 = [1,-2*cos(t),1];
a1 = [1, -2*r1*cos(t),r1*r1];
figure('NumberTitle', 'off', 'Name', 'Pole-Zero plot for r = 0.4, Theta= pi/3');
zplane(b1,a1)

r2 = 0.6;
b2 = [1,-2*cos(t),1];
a2 = [1, -2*r*cos(t),r2*r2];
figure('NumberTitle', 'off', 'Name', 'Pole-Zero plot for r = 0.6, Theta= pi/3');
zplane(b2,a2)