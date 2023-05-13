clear;clc;

A = [24, 19, 14, 10, 7, 5, 6, 8, 12, 16, 21, 27]

B = ecdf(A)

boxplot(A)


normplot(A)


gem = 7
sigma = std(A)
test_cdf = makedist("Normal"','mu',gem,'sigma',sigma)
[h,p, D]=kstest(A,'CDF',test_cdf)