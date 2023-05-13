clear;clc;

N1 = 58; N2 = 172; N3 = 268;
n1 = 14; n2 = 30; n3 = 11;


x = [repmat(1,N1,1); repmat(2,N2,1); repmat(3,N3,1)];
y = [repmat(1,n1,1); repmat(2,N1-n1,1); repmat(1,n2,1);
 repmat(2,N2-n2,1); repmat(1,n3,1); repmat(2,N3-n3,1)];



[table,chi2,p]=crosstab(y,x)


laaggeschoolden_passieve_woning = (n3/(n1+n2+n3))*100

hogeropgeleiden = (n1/N1)*100

