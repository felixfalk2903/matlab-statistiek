clear;clc;

a = frnd(7,5,100,400);

xbar = mean(a)

histogram(xbar,'Normalization','pdf')
hold on;

x=0:0.05:4;
plot(x,normpdf(x,5/3,sqrt(5/7)/3), 'r')
hold on;


plot(x,fpdf(x,7,5), 'g')