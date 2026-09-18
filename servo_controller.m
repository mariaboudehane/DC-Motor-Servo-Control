clear
clc

parameters

%% Original State Space

A = [-R/L   -Ke/L;
    Kt/J  -b/J];

B = [1/L;
    0];

C = [0 1];

%% Augmented System

Aa = [A      zeros(2,1);
    -C           0];

Ba = [B;
    0];

%% Desired Poles

desired_poles = [-20 -25 -30];

%% Servo Gain

Ka = place(Aa,Ba,desired_poles);

disp('Augmented Gain =')
disp(Ka)
K = Ka(1:2);
Ki = Ka(3);

disp(K)
disp(Ki)