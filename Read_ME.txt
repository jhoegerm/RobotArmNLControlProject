ME 5704 - Final Project Read ME

This code block is broken into 3 sub_files: One for each of the Questions.

- To run the Code for Question 2: Open the folder called FinalQ2_lyp and open Jhoegerm_final_ME5704_m3_lyapunov.mlx. 
All you should need to do from there is click run and it should it run in its entirety with its desired  end position is where all angles are equal to 0 with
desired starting angular positions being where the arm is fully extended to the left. For actual, I took the desired positions and added a large amount of noise to them using 
the matlab rand function (see q0d and q0). To see the figures for q,qhat, and U. See figures jpgs in file or run the program and scroll down to Q3.

- To run the Code for Question 3: Open the folder called FinalQ3_Lypadap and open Jhoegerm_final_ME5704_m5_adaptive.mlx. All you should need to do from there is click run and it should it run in its entirety with its desired  end position is where all angles are equal to 0 with
desired starting angular positions being where the arm is fully extended to the left. To see the figures for q,qhat, and U. See figures jpgs in file or run the program and scroll down to Q3.

- For Question 4: I honestly I couldn't get it to fully work to the point where I could test and optimize the gains because the ode function (even optimized as best I could)
 wouldn't finish even given 20 min of my computer time. I understand the theory and you will see implementation of it in the closed_loop_dyn sectio under functions and the code does
run. If you remove the semi-colon blocking the output of dx in closed_loop_dyn. You do get an output, I just could never get it to give a small enough value using given dynamics 
and PD restrictions on gain to make the system function properly.



