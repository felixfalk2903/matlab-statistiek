clc;clear;
a = [1,2,0]
b = [3,0,-3]
c = [5,2,6]

ab = b - a
ac = c - a

(1/2) * norm(cross(ac,ab))
