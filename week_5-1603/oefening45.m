clear;clc;

syms x
y = taylor(exp(2*x+1))
hold on

fplot(y)
b = taylor(x^2-x)

fplot(b)

hold off