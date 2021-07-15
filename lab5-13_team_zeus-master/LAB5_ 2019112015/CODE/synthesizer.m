function y = synthesizer(f_notes,P,adsr,td_notes,Fs)
y = [];
N = length(P);
A = zeros(1,N);
for ii = 1:N
    A(ii) = 1/(ii)^2;
end
    adsr1 = adsr;
for ii = 1:length(f_notes)
  adsr1 = adsr ;
  adsr1(1) = td_notes(ii)*adsr(1);  
  adsr1(2) = td_notes(ii)*adsr(2);
  adsr1(4) = td_notes(ii)*adsr(4);
  adsr1(5) = td_notes(ii)*adsr(5);
 [t_env,env] = envelope(adsr1(1),adsr1(2),adsr1(3),adsr1(4),adsr1(5),Fs);
 xt = harmonics(A,f_notes(ii),P,td_notes(ii),Fs);
 disp(length(xt));
 disp(length(env));
 xte = xt.* env;
 
 y = [y,xte];
end
end