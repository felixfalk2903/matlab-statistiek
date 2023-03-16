

clc;clear;
t = 0: 0.01:2*pi
r1 = 1+t-t
r2 = 2*cos(3*t)


snijpunten = fzero(@(x)2*cos(3*x),1)
polarplot(r2)
hold on 
polarplot(r1)
hold off