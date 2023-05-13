clear;clc;

A = [25, 22, 10, 28, 20, 14, 25, 30]

boxplot(A)

gem = mean(A)
sig = std(A)

test_cdf = makedist("Normal"','mu',gem,'sigma',sig)
[h,p, D]=kstest(A,'CDF',test_cdf)
