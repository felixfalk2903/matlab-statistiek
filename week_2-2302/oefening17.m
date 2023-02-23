


syms x

y = @(x)2.*x.^3.-x.^2.-15.*x + 18

fzero(y,1)

fzero(y,1.5)