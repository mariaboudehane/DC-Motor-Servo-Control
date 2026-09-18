
clear
clc

parameters

A = [-R/L   -Ke/L;
    Kt/J  -b/J];

B = [1/L;
    0];

C = [0 1];

D = 0;

sys = ss(A,B,C,D);

disp(A)
disp(B)
disp(C)
disp(D)

eig(A)

Co = ctrb(A,B);
rank(Co)