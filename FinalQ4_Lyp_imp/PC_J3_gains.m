function [KD,alphamat,KP] = PC_J3_gains
    xini = [    0.05,    0.5,    0.2]; %q0 = [    0.0098,    0.6592,    0.2755];
    xfin = [.6,.2,.1]; %0.4100,    0.0098,    0.0263
    M = 3;
    alphamat = zeros(3,M+1);
    for i = 1:3
        diff = (xfin(i) - xini(i)) / (M);
        alphamat(i,:) = (xini(i):diff:xfin(i)) ;
    end
    
%     alphamat = [    0.0500    0.2333    0.4167    0.6000;
%     0.5000    0.4000    0.3000    0.2000;
%     0.2000    0.1667    0.1333    0.1000];

    KD = 1.4*diag([1,1,.001]);

    KP = 10*diag([.1,15,1]);

end

