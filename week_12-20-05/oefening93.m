clear;clc;

y = [372 206 175 154 136 112 55 45 221 166 ...
 164 113 82 32 228 196 128 97 64 249]';
x1 = [45 55 61 66 71 71 81 86 53 60 64 68 ...
 79 81 56 68 75 83 88 59]';
x2 = [162 233 232 231 131 237 224 219 203 ...
 189 210 210 196 180 200 173 188 161 119 161]';


x_ext=[ones(20,1),x1, x2]


[b,bint,r,rint,stats] = regress(y,x_ext)

% Regressie is significant
% bint passeert nergens aan null
%  721.7233
%   -6.6207
%   -0.6139


test_cdf=makedist('Normal','mu',mean(r),'sigma',std(r))
[h,p,D] = kstest(r,'CDF',test_cdf) %h = 0 is dus normaal verdeeld met 95% betrouwbaarheid

%resedu is normaal verdeeld, H0 aanvaarden

scatter(1:20,r) % geen trend te zien.

%Regressie model aanvaarden.



scatter3(x1,x2,y)
hold on
x1_list = min(x1):5:max(x1);
x2_list = min(x2):10:max(x2);
[x1grid,x2grid] = meshgrid(x1_list,x2_list);
yfit = b(1) + b(2)*x1grid + b(3)*x2grid;
mesh(x1grid,x2grid,yfit)
xlabel('X1')
ylabel('X2')
zlabel('Y')
