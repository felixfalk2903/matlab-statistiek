
clear;clc;
syms x
y1 = @(x) 1/(1+x*x);
y2 = @(x) x*x/2;

fplot(y1)
hold on
fplot(y2)
hold off

sub = @(x) y1(x)-y2(x)

fzero(sub,-3)
fzero(sub,3)

integ = integral(sub, -1,1,'ArrayValued', true)