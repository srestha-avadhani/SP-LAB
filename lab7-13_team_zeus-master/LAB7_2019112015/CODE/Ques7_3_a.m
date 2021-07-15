r = 1/2;
t = pi/3;
b = [1,-2*cos(t),1];
a = [1, -2*r*cos(t),r*r];
figure('NumberTitle', 'off', 'Name', 'Pole-Zero plot for r = 1/2, Theta= pi/3');
zplane(b,a)

r=(2^(-(1/2)));
t = pi/6;
b = [1,-2*cos(t),1];
a = [1, -2*r*cos(t),r*r];
figure('NumberTitle', 'off', 'Name', 'Pole-Zero plot for r = 1/Root(2), Theta= pi/6');
zplane(b,a)