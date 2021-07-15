r = 0.95;
t1 = pi/3;
b1 = [1,-2*cos(t1),1];
a1 = [1, -2*r*cos(t1),r*r];
figure('NumberTitle', 'off', 'Name', 'Pole-Zero plot for r = 0.95, Theta= pi/3');
zplane(b1,a1)

t2 = pi/6;
b2 = [1,-2*cos(t2),1];
a2 = [1, -2*r*cos(t2),r*r];
figure('NumberTitle', 'off', 'Name', 'Pole-Zero plot for r = 0.95, Theta= pi/6');
zplane(b2,a2)