clear;clc;

x = [81 92 83 75 81 77 92 101 87]';
y = [122 144 138 145 152 110 118 160 108]';

x_ext = [ones(9,1) x]

[b,bint,r,rint,stats] = regress(y,x_ext) %p-waarde is grooter dan 0,05 H0 accepteren. en model is dus niet significant


scatter(x,y) %waarden zijn te versprijd, er kan geen regressie model gemaakt worden 
