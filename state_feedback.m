clear
clc

parameters

%% State Space

A = [-R/L   -Ke/L;
    Kt/J  -b/J];

B = [1/L;
    0];

C = [0 1];

D = 0;

%% Desired poles

desired_poles = [-20 -25];

%% State Feedback Gain

K = place(A,B,desired_poles);

disp('State Feedback Gain K =')
disp(K)
N = -inv(C*inv(A-B*K)*B);

disp('Reference Gain N =')
disp(N)