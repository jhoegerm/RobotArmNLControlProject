t= 0;
steps = 5;
x = xfunc_use;
    links = 4;
    % State decomposition.
  
    q  = x(1:links);
    dq = x( links+1:(2*links) );

    % Dynamic terms
    D   = Cfcn_inertia_Matrix(q);
    Cdq = Cfcn_Coriolis_centrifugal_terms(q,dq);
    C = Cfcn_Coriolis_pure_terms(q,dq);
    G   = Cfcn_gravity_terms(q);
    J = Cfcn_Jacobian(q);
    J2 = Cfcn_Jacobian2(q,dq);
    %
    s = t/20;
    [KD,alphamat,KP] = PC_J3_gains;
    xd = bezier( alphamat,s);
    d_xd = beziera(alphamat,s);
    d2_xd = bezierd(alphamat,s);
    x1a = (Cfcn_forward_kinematics(q));
    %x1 = x1a(:,end);
    %dx1 = J*dq;
    xhat = x1a(:,end)-xd;
    dxhat = J*dq - d_xd;
    %Di = inv(D);
    prof = eye(3,3) - ((J/D)*J');
    if (s < (5/20))
        f = [10;10;10];
    else
        f = zeros(3,1);
    end
    u = ( pinv(J/D) ) * ( d2_xd - (KP*xhat) - (KD*dxhat) + (  ( J/D ) * (C*dq + G)) - (J2*dq) + prof*f );   
    H   = Cdq + G;   
    % Closed-loop vector filed
    fcl = [dq; D\(  u-H  ) ];
    dx  = fcl;
for i = 1:steps
    tdx = .1;
    x = [q;dq] + dx*tdx;
    t = t+tdx;
    links = 4;
    % State decomposition.
  
    q  = x(1:links);
    dq = x( links+1:(2*links) );

    % Dynamic terms
    D   = Cfcn_inertia_Matrix(q);
    Cdq = Cfcn_Coriolis_centrifugal_terms(q,dq);
    C = Cfcn_Coriolis_pure_terms(q,dq);
    G   = Cfcn_gravity_terms(q);
    J = Cfcn_Jacobian(q);
    J2 = Cfcn_Jacobian2(q,dq);
    %
    s = t/20;
    [KD,alphamat,KP] = PC_J3_gains;
    xd = bezier( alphamat,s);
    d_xd = beziera(alphamat,s);
    d2_xd = bezierd(alphamat,s);
    x1a = (Cfcn_forward_kinematics(q));
    %x1 = x1a(:,end);
    %dx1 = J*dq;
    xhat = x1a(:,end)-xd;
    dxhat = J*dq - d_xd;
    %Di = inv(D);
    prof = eye(3,3) - ((J/D)*J');
    if (s < (5/20))
        f = [10;10;10];
    else
        f = zeros(3,1);
    end
    u = ( pinv(J/D) ) * ( d2_xd - (KP*xhat) - (KD*dxhat) + (  ( J/D ) * (C*dq + G)) - (J2*dq) + prof*f );   
    H   = Cdq + G;   
    % Closed-loop vector filed
    fcl = [dq; D\(  u-H  ) ];
    dx = fcl;
end
dx = fcl
