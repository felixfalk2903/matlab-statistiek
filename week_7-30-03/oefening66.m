clear;clc;

mu1 = 2
sigma1 = 0.09
mu2 = 1.5
sigma2 = 0.01
A = [normrnd(mu1,sigma1,1,100);normrnd(mu2,sigma2,1,100)]


x=0:1/100:1;

z = normcdf(x,0.5,sqrt((sigma1^2)+(sigma2^2)))

result = A(1,:) - A(2,:)
[f,x] = ecdf(result)
plot(x,f)
hold on;
plot(z)
