
w0 = pi/4;
b0 = 1/((1-exp(1i*w0))*(1-exp(-1i*w0)));
disp(b0);
a = 1;
b = [b0,-b0*(exp(1i*w0)+exp(-1i*w0)),b0];
fvtool(b,a);


w0 = pi/4;
r0 = 0.9;
b0 = 1;
b = [ b0,-b0*(exp(1i*w0)+exp(-1i*w0)),b0];
a = [1,-r0*(exp(1i*w0)+exp(-1i*w0)),+r0^2];
fvtool(b,a);
