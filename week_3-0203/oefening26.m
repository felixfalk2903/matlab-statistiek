
V1 = -10:0.1:10;
V2 = -10:0.1:10;
[X,Y] = meshgrid(V1,V2)
z = (sin(sqrt((X.*X) + (Y.*Y)))./(sqrt((X.*X)+(Y.*Y))))


mesh(X,Y,z)

contour(X,Y,z)

