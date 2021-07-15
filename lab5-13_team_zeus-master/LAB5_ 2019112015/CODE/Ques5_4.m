N =5;
Fs = 10000;
f_notes = 50:5:100;
M= length(f_notes);
A = zeros(1,N);
P= zeros(1,N);
adsr = [0.2,0.2,0.7,0.4,0.2];
td_notes =zeros(1,M);
for ii = 1:N
    A(ii) = 1/(ii)^2;
end
for ii = 1:M
    td_notes(ii) = 1;
end
y = synthesizer(f_notes,P,adsr,td_notes,Fs);
soundsc(y,Fs);
pause(10.0);

N =5;
Fs = 10000;
f_notes = 100:-10:40;
M= length(f_notes);
A = zeros(1,N);
P= zeros(1,N);
adsr = [0.2,0.2,0.7,0.4,0.2];
td_notes =zeros(1,M);
for ii = 1:N
    A(ii) = 1/(ii)^2;
end
for ii = 1:M
    td_notes(ii) = 1;
end
y = synthesizer(f_notes,P,adsr,td_notes,Fs);
soundsc(y,Fs);
pause(10.0);




