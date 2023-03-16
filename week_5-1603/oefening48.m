clear;clc;
syms s t
y = @(s) 2-s

ilaplace(y,s,t)