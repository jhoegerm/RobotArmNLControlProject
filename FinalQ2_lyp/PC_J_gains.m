function [KD,A_PD] = PC_J_gains
    %If you are wondering how I got these numbers you poor and tired TA.
    %REPEATED TRIAL AND ERROR AND WAY TOO MUCH TIME SPENT TRYING TO FIND A
    %LOGIC TO IT.
    links = 4;
%     KD = 6.9;
%     A_PD = 1*diag([9.45,9.85,5.4,9.6]);
    KD = 20.1;
    A_PD = 2*diag([39.0,15.80,20.70,6.8]);
end

