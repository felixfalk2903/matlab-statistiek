


a = zonnepanelen.stroom(1:15,1)
b = zonnepanelen.stroom(16:30,1)



gem = mean(b)
sig = std(b)
test_cdf = makedist("Normal"','mu',gem,'sigma',sig)

[h,p, D]=kstest(a,'CDF',test_cdf)


p = vartestn([a, b], 'TestType', 'LeveneAbsolute', 'Display', 'off')

[h,p,ci, stats]=ttest2(a,b)

boxplot([a,b])









