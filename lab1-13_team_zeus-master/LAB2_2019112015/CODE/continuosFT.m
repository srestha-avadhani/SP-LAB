function X = continuosFT(xt,t,a,b,w)
expr = (xt)*exp(-1j*w*t);
X = int(expr,t,a,b);

end