A(:,1)=balken.pressure(1:15);
A(:,2)=balken.pressure(16:30);
A(:,3)=balken.pressure(31:45);

A
x = [A(6,:),A(7,:),A(8,:),A(9,:),A(10,:)]
gem = mean(x)
sig = std(x)

dist = makedist("Normal","mu",gem,"sigma",sig)

[h,p,D] = kstest(x,"CDF",dist)


p = vartestn(A, 'TestType', 'LeveneAbsolute', 'Display', 'off')


[p,table,stats]=anova2(A,5)
