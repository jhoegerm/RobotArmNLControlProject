function [KD,A_PD,KI] = PC_J2_gains


    KD = 20.1;
    A_PD = 2*diag([39.0,15.80,20.70,6.8]);

    KI =  1*diag([.1,.10,18]);


end

