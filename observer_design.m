clear
clc

parameters

%% State Space

A = [-R/L   -Ke/L;
    Kt/J  -b/J];

B = [1/L;
    0];

C = [0 1];

%% Observability

Ob = obsv(A,C);

disp('Observability Matrix =')
disp(Ob)

disp('Rank =')
disp(rank(Ob))
observer_poles = [-60 -70];

L = place(A',C',observer_poles)';

disp('Observer Gain =')
disp(L)
clear L
L=0.5;
K = [5 20];
Ki = 50;
Reference = 10;
Current = 0;
omega = 0;

u = -K*[Current;omega] - Ki*(Reference-Current)
clear
clc
parameters

A = [-R/L -Ke/L;
    Kt/J -b/J];

B = [1/L;
    0];

C = [0 1];

Aa = [A zeros(2,1);
    -C 0];

Ba = [B;
    0];

poles = [-10 -12 -15];

Ka = place(Aa,Ba,poles);

K = Ka(1:2)
Ki = -Ka(3)