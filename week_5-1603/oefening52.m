clear;clc;
syms i
S = [   -1 1 -1 0 0;
        0 0 1 -1 -1;
        30 30 0 0 0;
        0 30 15 0 30;
        0 0 0 10 -30;
    ];
A = [0;0;-60;60;200];

result = S\A