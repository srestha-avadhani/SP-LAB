
N =5;
Fs = 10000;
M= 5;
f_notes = 50 + 50*rand(1,M);
td_notes = 0.5 + rand(1,M);
A = zeros(1,N);
P= zeros(1,N);
adsr = [0.2,0.2,0.7,0.4,0.2];
for ii = 1:N
    A(ii) = 1/(ii)^2;
end
y = synthesizer(f_notes,P,adsr,td_notes,Fs);
soundsc(y,Fs);
pause(6.0);

