function y = partialfouriersum(A,T,t)
y = zeros(size(t));
N = length(A)/2 -0.5;
    for k = -N:N
        y = y + A(N+k+1) * exp(1i*k*(2*pi/T)*t);
    end
end