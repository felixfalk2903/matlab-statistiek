clear;clc;


sport=[55 59 60 58 61 62 65];
geen_sport=[57 62 62 62 60 64 64];
p2 = vartestn([sport', geen_sport'], 'TestType', 'LeveneAbsolute', 'Display', 'off')
[h,p,ci, stats] = ttest2(sport,geen_sport,'Alpha',0.10)



