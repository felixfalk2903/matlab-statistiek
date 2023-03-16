
syms x z
y = @(x) atan(((x-1)/2) - (1/(2*x-2)));

lim1_right = limit(y,x,1,'right')
lim1_left = limit(y,x,1,'left')

inf_plus = limit(y,x,Inf)
inf_minus = limit(y,x,-Inf)


diffs = diff(atan(((x-1)/2) - (1/(2*x-2))))

y_2 = solve(diffs == 2)

fplot(y)