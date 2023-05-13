clear;clc;


A=[4 3 6 10; 10 8 5 16; 2 0 3 4; 1 2 3 4]
[p,table,stats]=anova2(A,1)
multcompare(stats)
multcompare(stats,'estimate','row')