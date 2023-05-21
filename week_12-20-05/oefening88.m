

x(:,1) = gasbedrijf.temperatuur
x(:,2) = gasbedrijf.temp_vorige_dag
x(:,3) = gasbedrijf.windsnelheid
x(:,4) = gasbedrijf.weekend


x_ext = [ones(size(x,1),1) x(:,1:4)]


y=gasbedrijf.gastoevoer


[b,bint,r,rint,stats] =regress(y,x_ext)
%f = b(1)+b(2)*x(:,1)+b(3)*x(:,2)+b(4)*x(:,3)+b(5)*x(:,4);
%plot(x,y,'o') %we gebruiken bolletjes om de datapunten te plotten
%hold on
%plot(x,f,'-') %we gebuiken een lijn voor het regressiemodel
%hold off


x_ext = [ones(size(x,1),1) gasbedrijf.temperatuur]
[b,bint,r,rint,stats] =regress(y,x_ext)
f = b(1)+b(2)*x(:,1);

plot(x(:,1),y,'o') %we gebruiken bolletjes om de datapunten te plotten
hold on
plot(x(:,1),f,'-') %we gebuiken een lijn voor het regressiemodel
hold off




