


clear;clc;

syms t

x = @(t) 2 * sin(t) + cos(2*t)
y = @(t) -2 * cos(t) - sin(2*t)

fplot(x,y)