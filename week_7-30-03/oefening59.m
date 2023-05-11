clear;clc;

A=[30 73 51 57 81 21 75 46 85 21;
45 70 40 60 71 30 80 50 70 10];

mean = mean(A,2)

variatie = var(A,0,2)
sigma_economie = sqrt(variatie(2))

standaardfout=sigma_economie/sqrt(10)

scatter(A(1,:),A(2,:))
