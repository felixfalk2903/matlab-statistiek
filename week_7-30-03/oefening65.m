clear;clc;


fcdf(2,5,12)
b = 1-tcdf(1,10)

tinv(0.15,10)
n = 500
p = 0.02
mu = n*p
sigma = sqrt(n*p*(1-p))


normcdf(11.5,mu,sigma)
