
syms x y 

eq1 = x.^2 - 2*x + y.^2 == 0;
eq2 = 9*x.^2 - 18*x + 4*y.^2 == 27;

fimplicit(eq1)
hold on
fimplicit(eq2)
hold off