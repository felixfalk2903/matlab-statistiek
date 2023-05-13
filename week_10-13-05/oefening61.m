clear;clc;


A = [12 13 14 16 15 18 19 10 11 12 13 14 15 13 14 12];


histogram(A)

median = median(A)
interkwartiel = iqr(A)
modus = mode(A)
percentile = prctile(A,10)





gem = mean(A)
sig = std(A)

dist = makedist("Normal","mu",gem,"sigma",sig)

[h,p,D] = kstest(A,"CDF",dist)
