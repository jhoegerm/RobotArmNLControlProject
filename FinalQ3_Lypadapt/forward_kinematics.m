function out1 = forward_kinematics(in1)
%FORWARD_KINEMATICS
%    OUT1 = FORWARD_KINEMATICS(IN1)

%    This function was generated by the Symbolic Math Toolbox version 9.0.
%    13-Dec-2022 03:32:09

q1 = in1(1,:);
q2 = in1(2,:);
q3 = in1(3,:);
et1 = cos(q1).*9.8e-3-cos(q1).*cos(q2).*7.348822935043103e-35+cos(q1).*sin(q2).*2.510525938252074e-17+cos(q2).*sin(q1).*(4.1e+1./1.0e+2);
et2 = sin(q1).*sin(q2).*1.200153863164406e-18;
et3 = sin(q1).*(-9.8e-3)+cos(q1).*cos(q2).*(4.1e+1./1.0e+2)+cos(q1).*sin(q2).*1.200153863164406e-18+cos(q2).*sin(q1).*7.348822935043103e-35;
et4 = sin(q1).*sin(q2).*(-2.510525938252074e-17);
et5 = cos(q2).*(-1.200153863164404e-18)+sin(q2).*(4.1e+1./1.0e+2);
et6 = sin(q2).*sin(q3).*(-2.491822393260846e-1)-cos(q3).*(cos(q2)-7.498798913309288e-33).*2.491822393260846e-1;
et7 = 2.755e-1;
et8 = cos(q1).*cos(q2);
et9 = -7.348822935043091e-35;
et10 = cos(q1).*9.799999999999985e-3;
et11 = sin(q3).*(cos(q1).*sin(q2).*6.123233995736766e-17+cos(q2).*sin(q1)).*(-2.491822393260846e-1)+et8.*et9+cos(q1).*sin(q2).*2.510525938252074e-17+cos(q2).*sin(q1).*(4.1e+1./1.0e+2);
et12 = sin(q1).*sin(q2).*1.200153863164404e-18;
et13 = cos(q3).*(cos(q1).*1.224646799147353e-16+cos(q1).*cos(q2).*6.123233995736766e-17-sin(q1).*sin(q2)).*(-2.491822393260846e-1);
et14 = cos(q2).*sin(q1);
et15 = 7.348822935043091e-35;
et16 = sin(q1).*(-9.799999999999985e-3);
et17 = sin(q3).*(cos(q1).*cos(q2)-sin(q1).*sin(q2).*6.123233995736766e-17).*(-2.491822393260846e-1)+cos(q1).*cos(q2).*(4.1e+1./1.0e+2);
et18 = cos(q1).*sin(q2).*1.200153863164404e-18+et14.*et15;
et19 = sin(q1).*sin(q2).*(-2.510525938252074e-17);
et20 = cos(q3).*(sin(q1).*1.224646799147353e-16+cos(q1).*sin(q2)+cos(q2).*sin(q1).*6.123233995736766e-17).*2.491822393260846e-1;
mt1 = [0.0,0.0,2.755e-1,cos(q1).*cos(q2).*(4.1e+1./1.0e+2)-sin(q1).*sin(q2).*2.510525938252074e-17,cos(q1).*sin(q2).*2.510525938252074e-17+cos(q2).*sin(q1).*(4.1e+1./1.0e+2),sin(q2).*(4.1e+1./1.0e+2)+2.755e-1,et3+et4,et1+et2];
mt2 = [cos(q2).*(-1.200153863164406e-18)+sin(q2).*(4.1e+1./1.0e+2)+2.755e-1,et16+et17+et18+et19+et20,et10+et11+et12+et13,et5+et6+et7];
out1 = reshape([mt1,mt2],3,4);
