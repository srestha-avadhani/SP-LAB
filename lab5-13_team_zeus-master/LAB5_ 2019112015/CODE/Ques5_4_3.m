N =7;
Fs = 10000;
 F_notes=[440,392,349.23,293.66,349.23,293.66,261.63,493.88,440,392,440,392,349.23,293.66,349.23,293.66,261.63,493.88,440,392,440,392,261.63];
for nn=1:length(F_notes)
    td_notes(nn)=0.4;
end
A = zeros(1,N);
P= zeros(1,N);
adsr = [0.2,0.2,0.7,0.4,0.2];
for ii = 1:N
    A(ii) = 1/11*(ii);
end

y = synthesizer(F_notes,P,adsr,td_notes,Fs);
soundsc(y,Fs);
pause(2.0)
audiowrite("song.wav",y,Fs);
