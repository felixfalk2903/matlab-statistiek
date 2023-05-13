


a = zonnepanelen.stroom(1:15,1)
b = zonnepanelen.stroom(16:30,1)

[f,x] = ecdf(a)
[f1,x1] = ecdf(b)


x=a-b;
gem=mean(x)
sig=std(x)

test_cdf = makedist("Normal"','mu',gem,'sigma',sig)

[h,p, D]=kstest(x,'CDF',test_cdf)


[h,p,ci,stats] = ttest(x,0)



