clear;clc;


x = [1.5 2 3.1 4.2 5 6.1 6.9 8.3 9.5 10.1]';
y = [7 20 65 64 187 430 600 1300 2000 3500]';


x_ext = [ones(10,1) x]

[b,bint,r,rint,stats] = regress(y,x_ext)

% p<0,05 H0 verwerpen H1 aanemen. regressie is significant
% bint hebben geen interval dat door 0 gaat. 

test_cdf=makedist('Normal','mu',mean(r),'sigma',std(r))
[h,p,D] = kstest(r,'CDF',test_cdf) %h = 0 is dus normaal verdeeld met 95% betrouwbaarheid


scatter(1:10,r) % duidelijk verband zichtbaar op scatterplot

% men mag dit model dus niet aanvaarden.