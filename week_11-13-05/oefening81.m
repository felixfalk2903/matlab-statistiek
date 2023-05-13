clear;clc;

A=[6.3 6.6 6.4 6.4 6.5;4.8 4.3 5.0 4.7 5.1;6.0 6.2 6.3 5.8 6.2]



dist = makedist("Normal","mu",mean(A(3,:)),"sigma",std(A(3,:)))

[h,p,D] = kstest(A(3,:),"CDF",dist)



p = vartestn(A', 'TestType', 'LeveneAbsolute', 'Display', 'off')

[p,table,stats]=anova1(A')

multcompare(stats)