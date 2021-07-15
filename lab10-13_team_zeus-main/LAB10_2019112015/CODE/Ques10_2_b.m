n = 2001;
w0 = pi/4;
r0 = 0.99;
b0 = 1;
b = [ b0,-b0*(exp(1i*w0)+exp(-1i*w0)),b0];
a = [1,-r0*(exp(1i*w0)+exp(-1i*w0)),+r0^2];
figure('NumberTitle', 'off', 'Name', 'Frequency Response for IIR Filter');
freqz(b,a,n);


 