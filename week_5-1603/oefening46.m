clear;clc;

syms s
f= @(s) (2*s^3+8*s^2+12*s+32)/(s^4+4*s^3+8*s^2+16*s+16)


ilaplace(f,s)