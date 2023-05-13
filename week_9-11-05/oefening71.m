clear;clc;

a = [0.46 0.61 0.52 0.48 0.57 0.54];
gem = mean(a)
sig = std(a)
test_cdf = makedist("Normal"','mu',gem,'sigma',sig)
[h,p, D]=kstest(a,'CDF',test_cdf)

[h,p,ci, stats] = ttest(a,0.5,"Alpha",0.15,"Tail","right")