function [c1,c2] = dftconv(x1,x2)
m = length(x2);
l = length(x1);
if(l==m)
    X1k = fft(x1);
    X2k = fft(x2);
else
    X1k = fft(x1,max(l,m));
    X2k = fft(x2,max(l,m));
end
y3 = X1k .* X2k;
c1 = ifft(y3);

X1 = fft(x1,l+m-1);
X2 = fft(x2,l+m-1);
Y3 = X1 .* X2;
c2 = ifft(Y3);

end