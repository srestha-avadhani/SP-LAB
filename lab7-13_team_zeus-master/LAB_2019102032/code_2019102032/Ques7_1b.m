p1 = [3];
p2 = [0.1];
p3 = [0];
p4 = [0,0.5];
p5 = [2,-0.5];
p6 = [0.5,-0.5];
p7 = [2,2,2];
p8 = [0,1,2];
p9 = [-0.5,1j];
p10 = [0,1j,-1j];
p11 = [0.5,-0.5,2+j,2-j];
p12 = [1+1j,1+2j,1+3j,2+1j];
[N,ROC,C,S] = roc_cs(p1);
disp('Number of unique ROC');
disp(N);
disp('Unique ROCs');
disp(ROC);
disp('Causality matrix');
disp(C);
disp('Stability matrix');
disp(S);