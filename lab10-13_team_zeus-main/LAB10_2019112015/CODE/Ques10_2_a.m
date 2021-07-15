n = 2001;
w0 = pi/4;
b0 = 1/((1-exp(1i*w0))*(1-exp(-1i*w0)));
disp(b0);
a = 1;
b = [b0,-b0*(exp(1i*w0)+exp(-1i*w0)),b0];
figure('NumberTitle', 'off', 'Name', 'Frequency Response for FIR Filter');
freqz(b,a,n);
 