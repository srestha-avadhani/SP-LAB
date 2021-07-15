function F=fourierCoeff(N,T,t,xt,a,b)

% function to find FS coefficients
% initialize
w0 = 2*pi/T;
F = zeros(2*N+1,1); 
FS_idx = -N:N;
% for-loop to find coefficents
for nn = 1:2*N+1 
expr= (1/T)*(xt)*exp(-1i*(nn-(N+1))*w0*t);
F(nn) = int(expr,t,a,b);
fprintf('a(');
fprintf('%d', nn-(N+1));
fprintf(')');
disp(F(nn));
end
end