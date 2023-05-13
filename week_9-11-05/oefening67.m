



gem = 0.10
sig = std(microgolf.emissie)

test_cdf = makedist("Normal"','mu',gem,'sigma',sig)

[h,p, D]=kstest(microgolf.emissie,'CDF',test_cdf)

boxplot(microgolf.emissie)

[h,p,ci] = ttest(microgolf.emissie,0,'Alpha',0.01)