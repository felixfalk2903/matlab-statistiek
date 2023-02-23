

syms x
y = @(x) x^5-5*x == -2

vpa(solve(y,x,'real',true))
