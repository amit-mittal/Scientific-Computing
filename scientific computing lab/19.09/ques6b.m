x=[0 .1 .3 .6 1 1.1];
y=[-6 -5.89483 -5.65014 -5.17788 -4.28172 -3.99583];
n=size(x);
p=0;
syms z;
xi=1;
for i=1:n(2)
    xi=xi*(z-x(i));
end;
for i=1:n(2)
    p=p+(y(i)/(z-x(i))/xid(x,n(2),i));
end;
p=p*xi;
x1=min(x):(max(x)-min(x))/1000:max(x);
w=subs(p,z,x1);
figure(ceil(100000*rand()));
plot(x,y,x1,w);
h=legend('original function','interpolation',2,'Location','NorthWest');
grid on;