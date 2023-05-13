clear;clc;

A = 1125:150:2175

frequency = [4 7 10 12 7 3 0 2]


n = sum(frequency)
gem = sum(frequency.*A)/n

s=sqrt(sum(frequency.*(A-gem).^2)/(n-1))


LL=gem-norminv(0.975,0,1)*(s/sqrt(n))
RL=gem+norminv(0.975,0,1)*(s/sqrt(n))